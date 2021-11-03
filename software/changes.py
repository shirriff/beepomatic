# Driver program for raw.ino
# The workflow:
# 1. Plug in the boards
# 2. Flip switches or whatever
# 3. This program will display and speak any changes in the hex values

# Needs PySerial

import glob
import serial
import subprocess

# Find the serial port to the Teensy. This works on my macbook, but probably not anywhere else.
def getSerial():
  ports = glob.glob('/dev/cu.usbmodem*')
  if not ports:
    raise ValueError('No ports found')
  elif len(ports) > 1:
    raise ValueError('Multiple potential ports: %s' % ports)

  serialPort = serial.Serial(port=ports[0], baudrate=115200, timeout=2)
  return serialPort

def report(position, value):
  print('%d: %d' % (position, value))
  if value:
    subprocess.run('say %d on' % position, shell=True)
  else:
    subprocess.run('say %d off' % position, shell=True)
  
def compare(data, oldData):
  for i in range(0, 12):
    if data[i] != oldData[i]:
      oldByte = int(oldData[i], 16)
      newByte = int(data[i], 16)
      for bit in range(0, 8):
        if (oldByte ^ newByte) & (1 << bit):
          # Positions are numbered 1 to 48, then 101 to 148
          position = i * 8 + bit + 1
          if position > 48:
            position = position - 48 + 100
          report(position, bool(newByte & (1 << bit)))

def main():
  oldData = None
  serialPort = getSerial()
  while True:
    line = serialPort.readline().decode('Ascii').rstrip()
    data = line.split(' ')
    if len(data) == 12:
      if oldData:
        compare(data, oldData)
      oldData = data

if __name__ == "__main__":
    main()
