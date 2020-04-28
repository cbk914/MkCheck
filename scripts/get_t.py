#!/usr/bin/env python3
import time

with open('scripts/tiks.txt', 'r') as fin:
    data = fin.read().splitlines(True)
with open('scripts/tiks1.txt', 'w') as fout:
    fout.writelines(data[1:])

time.wait(3)

fp = open("scripts/tiks1.txt")
content = fp.readline()
print(content)
