# Driver program for beeper.ino
# The workflow:
# 1. Plug in the boards
# 2. Enter the slot positions, e.g. 5 8
# 3. This program triggers the teensy to run a scan.
# 4. The results are displayed and logged.

# Needs PySerial

import glob
import os
import serial

# Find the serial port to the Teensy. This works on my macbook, but probably not anywhere else.
def getSerial():
  ports = glob.glob('/dev/cu.usbmodem*')
  if not ports:
    raise ValueError('No ports found')
  elif len(ports) > 1:
    raise ValueError('Multiple potential ports: %s' % ports)

  serialPort = serial.Serial(port=ports[0], baudrate=115200, timeout=2)
  return serialPort


# Append a number to create a unique filename
def uniqueFile(name):
  for i in range(1, 100):
    try:
      f = open(name % i, 'x')
      print('Opened', name % i)
      return f
    except FileExistsError:
      pass # Try again
  sys.exit("Couldn't create file")


def main():
  serialPort = getSerial()
  with uniqueFile("output-%d") as f:
    while True:
      try:
        desc = input("Enter positions: ")
        if desc == '': break
      except EOFError:
        break
      print('slots: %s' % desc, file=f)
      serialPort.write(b"1\n"); # Start the scan
      while True: # Read results until 'end'
        if (serialPort.in_waiting > 0):
          s = serialPort.readline().decode('Ascii').rstrip()
          print(s)
          print(s, file=f)
          if 'end' in s:
            break

if __name__ == "__main__":
    main()
