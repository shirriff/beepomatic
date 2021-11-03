# Make a net from the connection files output-*

# Uses networkX: "pip install networkx"

import glob
import re
import sys

import networkx as nx

from collections import defaultdict

G = nx.Graph() # The graph of connections

boardGrounds = set() # All the grounds


# Some statistics
counts = defaultdict(lambda: 0)
pairs = defaultdict(lambda: set()) # Keep track of which boards we process
scans = 0 # Keep track of how many scans we process
wires = 0

# pins 1-47 are on the first board, 101-147 are on the second board.
# Returns a string e.g. 1p3 for pin 3 on board 1.
def pinName(slots, num):
  if num < 100:
    return '%dp%d' % (slots[0], num)
  else:
    return '%dp%d' % (slots[1], num - 100)

grounds = set()

# Process a single line from the output file
def processLine(slots, line):
  global G, grounds
  m = re.match('(\d+): (.*)', line)
  if not m:
    sys.exit('bad data %s' % line)
  parts = tuple(map(int, m.group(2).split(' ')))
  pin1 = int(m.group(1))
  if pin1 == 1:
    grounds = set(parts) # Filter out everything connected to pin 1 as a power/ground connection
    grounds.add(1)
  name1 = pinName(slots, pin1)
  for pin2 in parts:
    name2 = pinName(slots, pin2)
    if pin2 in grounds:
      # Skip the ground connection
      boardGrounds.add(name2)
      continue
    G.add_edge(name1, name2)
    counts[pin1] += 1
    counts[pin2] += 1
    global wires
    wires += 1

# Process the wiring information from one output file
# Format is e.g.
# 8: 9 101
# indicating pin 8 is connected to pins 9 and 101 (i.e. pin 9 on board 1 and pin 1 on board 2).
def readFile(f):
  state = 'begin'
  for line in f.readlines():
    line = line.strip()
    if state == 'begin':
      m = re.match('slots: (\d+) (\d+)', line)
      global scans, grounds
      scans += 1
      grounds = set() # Clear the set of ground connections
      if m:
        slots = (int(m.group(1)), int(m.group(2)))
        pairs[slots[0]].add(slots[1])
        state = 'start'
      else:
        sys.exit('unexpected %s' % line)
    elif state == 'start':
      if line == 'start':
        state = 'data'
      else:
        sys.exit('expected start, got %s' % line)
    elif state == 'data':
      if line == 'end':
        state = 'begin'
      else:
        processLine(slots, line)

def filter(component):
  return True
  for c in component:
    if c.startswith('1p'): return True
  return False

# Sort key function for pins
# This converts "12p34" to [outFlag, 12, 34] so they will sort numerically
# The outFlag puts pins labeled 'out' at the front as they are more important
def pinSort(x):
  board, pin = map(int, x.split('p'))
  if 'out' in labels.get(x, ''):
    return [0, board, pin]
  else:
    return [1, board, pin]

def results():
  global G
  components = nx.connected_components(G)
  pinToNet = {}
  for c in components:
    for pin in c:
      pinToNet[pin] = c

  # Attach a label (if any) to the pin
  def label(p):
    if p in labels:
      return '%s(%s)' % (p, labels[p])
    else:
      return p

  # Truncate a list that's too long
  def trunc(t):
    if len(t) > 5:
      t.sort(key=pinSort)
      return '%s...' % t[0:3]
    else:
      return t

  for board in range(1, 26):
    print('\n--- board %d: %s' % (board, boards[board]))
    for pin in range(4, 48): # Skip pins 1-3
      pinName = '%dp%d' % (board, pin)
      if pinName in pinToNet:
        pins = sorted(pinToNet[pinName], key=pinSort)
        if len(pins) > 4:
          print(label(pinName) + ':', ', '.join([label(p) for p in pins[0:4] if p != pinName]), '...')
        else:
          print(label(pinName) + ':', ', '.join([label(p) for p in pins if p != pinName]))
      elif pinName in boardGrounds:
        if 'emitter' in label(pinName):
          print(label(pinName))
        else:
          print(label(pinName) + ': ground (switch?)')
      elif pinName in labels:
        print(label(pinName) + ': n/c?')

  print('--- grounds (switches) ---')
  for board in range(1, 26):
    header = '--- board %d' % board
    for pin in range(4, 48): # Skip pins 1-3
      pinName = '%dp%d' % (board, pin)
      if pinName in boardGrounds:
        if header:
          print(header)
          header = None
        print(label(pinName))

  if False:
    print('\n--- todo ---')
    todoCount = 0
    for board1 in range(1, 25):
      todo = [b for b in range(board1 + 1, 26) if b not in pairs[board1]]
      todoCount += len(todo)
      if todo:
        print(board1, todo)
      else:
        print(board1, 'done!')
    print('To do:', todoCount)

labels = {}
boards = {} # From board number to board description
def readLabels():
  try:
    with open('labels.txt') as f:
      for line in f.readlines():
        line = line.strip()
        if not line: continue
        m = re.match('#(\d+) (.*)', line)
        if m:
          boards[int(m.group(1))] = m.group(2)
          continue
        try:
          pin, label = line.split(' ', 1)
        except ValueError:
          sys.exit('Bad line %s' % line)
        if pin in labels:
          print('Dup label', pin, labels[pin], label)
        labels[pin] = label
  except FileNotFoundError:
    print('no label file')

def main():
  readLabels()
  for fname in glob.glob('output-*'):
    with open(fname) as f:
      readFile(f)
  results()

if __name__ == "__main__":
    main()
