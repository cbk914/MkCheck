#!/usr/bin/env python3
import time

with open('files/tiks_rsf.txt', 'r') as fin:
    data = fin.read().splitlines(True)
with open('files/rsf.txt', 'w') as fout:
    fout.writelines(data[1:])

time.sleep(3)

fp = open("files/rsf.txt")
content = fp.readline()
print(content)

#######################______________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ______________#######################