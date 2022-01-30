# Software for use with beepomatic

Disclaimer: these are ad hoc scripts that I used once, so don't expect them to be generally usefl.

The main programs:

* beeper.ino: This runs on the Teensy and drives the boards, scanning all pin pairs. It returns raw connectivity data over the serial port.

* beeper.py: Driver for beeper.ino. Run this on your laptop and it talks to the Teensy over the serial port. The workflow is that you plug the boards into two slots. Then enter the slot numbers into beeper.py. It will record the results in a file output-*n*, creating a new file each time you run it. So you end up with one or more output-*n* files with the data.

* net.py: Makes a net from the output-*n* files, determining the connected components. If a `labels.txt` file exists, it will label pins from that file.
Output to stdout, can be directed to out.txt.

Other programs:

* raw.ino: Runs on the Teensy to detect raw connections. Instead of scanning, this program just returns raw data. The idea is that you can probe pins manually and this program will let you know what the pin is connected to.

* changes.py: Driver program that uses audio to indicate any connectivity changes. If you're poking around in the box flipping switches and can't watch the screen, this program lets you know when something happens.

* fixlabels.py: The idea is to list all the unconnected pins in missing-pins.txt. This program then scans labels.txt and missing-pins.txt to make sure they are consistent, pins are either labeled or explicitly marked as missing.
This program generates labels-new.txt, the updated version. 



