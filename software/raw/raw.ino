// A driver for the beeper board.
// This program writes raw data to the serial port: 12 bytes (in hex) indicating the state of the inputs

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



void setup() {
  Wire.begin();
  Serial.begin(9600);

  for (int chip = 0; chip < 6; chip++) {
    for (int bank = 0; bank < 2; bank++) {
      writeByte(chip, CONFIG + bank, 0xff); // Set all lines as input
    }
  }
}

// Read all the inputs and print in hex
void loop() {
  bool first = true;
  for (int chip = 0; chip < 6; chip++) {
    for (int bank = 0; bank < 2; bank++) {
      byte value = readByte(chip, IN_PORT + bank);
      if (error) return;
      if (!first) {
        Serial.print(" "); // Space before hex value
      }
      first = false;
      Serial.print(value, HEX);
    }
  }
  Serial.println("");
}
