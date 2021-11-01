// The main driver program for the beeper boards.
// There are two boards: one has pins 1-48 and the second has pins 101-148.
// The idea is to pull each pin low in sequence. After pulling a pin low,
// check all the other pins to see if they have been pulled low, indicating
// a backplane connection between them.
//
// Each board has three PCAL955A chips, each providing 16 I/O lines.
// The chips are controlled over I2C.
//
// Each time a character is received on the serial input, a scan is performed.

// https://righto.com/beepomatic

#include <Wire.h>

const byte addrs[6] = {0x20, 0x21, 0x22, 0x24, 0x25, 0x26};
#define IN_PORT 0x00
#define OUT_PORT 0x02
#define CONFIG 0x06

bool error = false;

// I2C primitives

void writeByte(int chip, int port, byte value) {
  Wire.beginTransmission(addrs[chip]);
  Wire.write(port);
  Wire.write(value);
  error = Wire.endTransmission();
  if (error) {
    Serial.print("Error: ");
    Serial.println(error, HEX);
  }
}

byte readByte(int chip, int port) {
  Wire.beginTransmission(addrs[chip]);
  Wire.write(port);
  error = Wire.endTransmission();
  if (error) {
    Serial.print("Read error: ");
    Serial.println(error, HEX);
    return 0;
  }

  Wire.requestFrom(addrs[chip], 1);
  return Wire.read();
}

// Internally, pins are 0-47 and 48-95. Note: 47 and 95 are not used.
// Externally, want to display 1-48 and 101-148.
int pinName(int pin) {
  if (pin > 47) {
    return 101 + pin - 48;
  } else {
    return pin + 1;
  }
}

// Read all the inputs to find any connections
void findConnections(int src) {
  bool found = false;
  for (int chip = 0; chip < 6; chip++) {
    for (int bank = 0; bank < 2; bank++) {
      byte value = readByte(chip, IN_PORT + bank);
      if (error) return;
      for (int bit = 0; bit < 8; bit++) {
        int dst = pinName(chip * 16 + bank * 8 + bit);
        if (src == dst) continue;

        if ((value & (1 << bit)) == 0) {
          if (!found) {
            Serial.print(src, DEC); // Use first pin #1 for output
            Serial.print(":");
            found = true;
          }
          Serial.print(" ");
          Serial.print(dst, DEC); // Start with #1
        }
      }
    }
  }
  if (found) {
    Serial.println("");
  }
}

// The main loop to scan over all the pins
void scan() {
  for (int board = 0; board < 2; board++) {
    for (int count = 0; count < 48; count++) {
      int chip = 3 * board + (count >> 4);
      int bank = (count >> 3) & 1;
      int bit = count & 7;
      writeByte(chip, CONFIG + bank, 0xff ^ (1 << bit)); // Set one line as output
      if (error) return;
      findConnections(pinName(48 * board + count));
      writeByte(chip, CONFIG + bank, 0xff);
      if (error) return;
    }
  }
}

void setup() {
  Wire.begin();
  Serial.begin(9600);
  Serial.println(F("\nbeeper"));

  for (int chip = 0; chip < 6; chip++) {
    for (int bank = 0; bank < 2; bank++) {
      writeByte(chip, CONFIG + bank, 0xff); // Set all lines as input
      writeByte(chip, OUT_PORT + bank, 0x00); // Set output bits all low
    }
  }
  Serial.println("Initialized");
}

void loop() {
  int ch = Serial.read();
  if (ch == 'g') { // g for go full speed
    while (1) {
      scan(); 
      if (Serial.read() == '1') break; // Stop on '1'
    }
  } else if (ch >= 0) { // Do one scan
    error = false; // Reset any errors
    Serial.println("start");
    scan();
    Serial.println("end");
    while (Serial.read() != -1) {} // Discard extra characters
  }
}
