# Make a net from the connection files

# Uses networkX: "pip install networkx"

import glob
import re
import sys
from collections import defaultdict

counts = defaultdict(lambda: 0)
pairs = defaultdict(lambda: set())

scans = 0
wires = 0

import networkx as nx

def pinName(slots, num):
  if num < 100:
    return '%dp%d' % (slots[0], num)
  else:
    return '%dp%d' % (slots[1], num - 100)

# Process a single line from the output file
def processLine(slots, line):
  global G
  m = re.match('(\d+): (.*)', line)
  if not m:
    sys.exit('bad data %s' % line)
  pin1 = int(m.group(1))
  parts = tuple(map(int, m.group(2).split(' ')))
  name1 = pinName(slots, pin1)
  for pin2 in parts:
    name2 = pinName(slots, pin2)
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
      global scans
      scans += 1
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
  for c in component:
    if c.startswith('1p'): return True
  return False

def results():
  global G
  components = nx.connected_components(G)
  print('------ nets ------')
  for c in components:
    if filter(c):
      print(c)
  print('-----------')

G = nx.Graph()

def main():
  for fname in glob.glob('output-*'):
    with open(fname) as f:
      readFile(f)
  results()

  sys.exit(0)

  for i in range(1, 48):
    print(i, counts[i])
  for i in range(101, 148):
    print(i, counts[i])
  global scans, wires
  print('%d scans, %d wires' % (scans, wires))
  print('Board pairs:')
  for k, v in (pairs):
    print(k, v)

if __name__ == "__main__":
    main()
