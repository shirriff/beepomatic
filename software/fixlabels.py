# Helper to read labels.txt and missing-pins.txt and merge them together.
# The idea is that connectors have some unpopulated pins. We want to make sure that populated pins
# are all processed and unpopulated pins are not, to make sure nothing gets missed and there aren't
# any inconsistencies.

import re

missingPins = {board: set() for board in range(1, 26)} # Dictionary from board number to set of missing pins

def readMissing():
  with open('missing-pins.txt') as f:
    for line in f.readlines():
      line = line.strip()
      if not line:
        continue
      board, rest = line.split(':')
      board = int(board)
      for part in rest.strip().split(' '): 
        # A part is a pin number e.g. 5, or range e.g. 5-8
        pinRange = part.split('-')
        if len(pinRange) == 2:
          for pin in range(int(pinRange[0]), int(pinRange[1]) + 1):
            missingPins[board].add(pin)
        else:
          missingPins[board].add(int(pinRange[0]))

labels = {} # Dictionary with keys such as 2p30 for board 2 pin 30
boardDesc = {} # Descriptive line for each board
def readLabels():
  with open('labels.txt') as f:
    for line in f.readlines():
      line = line.strip()
      if not line:
        continue
      m = re.match('#(\d+)', line)
      if m:
        # Line specifying the board (followed by pins)
        board = int(m.group(1))
        boardDesc[board] = line
      else:
        line = line.replace(' (UNCONNECTED)', '')
        line = line.replace(' TODO', '')
        parts = line.split(' ', 1)
        if len(parts) == 1: continue
        labels[parts[0]] = parts[1]

def writeLabels():
  with open('labels-new.txt', 'w') as f:
    for board in range(1, 26):
      print(boardDesc[board], file=f)
      for pin in range(1, 48):
        pinName = '%dp%d' % (board, pin)
        if pinName in labels:
          if pin in missingPins[board]:
            print('%s %s (UNCONNECTED)' % (pinName, labels[pinName]), file=f)
          else:
            print('%s %s' % (pinName, labels[pinName]), file=f)
        else:
          if pin in missingPins[board]:
            print('%s (UNCONNECTED)' % pinName, file=f)
          else:
            print('%s TODO' % pinName, file=f)
      print('', file=f)

readMissing()
readLabels()
writeLabels()
