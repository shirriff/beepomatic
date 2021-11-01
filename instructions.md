## Teensy 4.1 wiring

I did the Teensy wiring on a solderless breadboard because it was too simple to be worth a PCB.
I use Ethernet cables to connect the boards to the Teensy; the signal is I2C not Ethernet, but this was a convenient cable.

Wire two Ethernet jacks ([breakout](https://www.sparkfun.com/products/716)) in parallel:\
Ground to jack pins 1, 2, 3, 5.\
Teensy pin 18 (SDA) and a 4.7K pullup resistor to jack pin 4.\
Teensy pin 19 (SCL) and a 4.7K pullup resistor to jack pin 6.\
+3.3V to jack pins 7 and 8.

## Collecting the data
Connect the cables to the Teensy and the Teensy to the laptop. Run *beeper.py*.\
Put the boards in box slots 1 and 2. (The boards are distinguished by the solder jumpers on them.)\
Enter "1 2" into the laptop and it will find the connections (via Teensy serial) and log them in the output file.\
Move the second board to slot 3 and enter "1 3". Move the board to slot 4, etc.
Note that the board needs to be inverted for many slots.
Once the second board has been in all the slots, move the boards to slots 2 and 3 and repeat.\
*beeper.py* can be restarted; it will create a new output file each time, preserving the old files.

## Processing the data
Run *net.py* and it will generate the nets from the output files.
