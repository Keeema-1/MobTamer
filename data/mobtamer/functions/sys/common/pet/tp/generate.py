import csv
import numpy as np
import json
import os

output = []
for i in range(6):
    output.append('execute positioned ~ ' + str(-32+i*64) + ' ~ if entity @a[tag=mt.player_check,distance=..32,limit=1] run function mobtamer:sys/common/pet/tp/00' + str(i) + '\n')
path = '00.mcfunction'
with open(path, 'w', encoding='utf-8') as f:
    f.writelines(output)

for i in range(6):
    output = []
    for j in range(4):
        output.append('execute positioned ~ ' + str(-32+i*64 -32+8 + j*16) + ' ~ if entity @a[tag=mt.player_check,distance=..8,limit=1] run function mobtamer:sys/common/pet/tp/00' + str(i) + str(j) + '\n')
    path = '00' + str(i) + '.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

for i in range(6):
    for j in range(4):
        output = []
        for k in range(4):
            output.append('execute positioned ~ ' + str(-32+i*64 -32+8-8+2 + j*16 + k*4) + ' ~ if entity @a[tag=mt.player_check,distance=..2,limit=1] run spreadplayers ~ ~ 2 4 under ' + str(-32+i*64 -32+8-8+2+3 + j*16 + k*4) + ' false @s\n')
        path = '00' + str(i) + str(j) + '.mcfunction'
        with open(path, 'w', encoding='utf-8') as f:
            f.writelines(output)
