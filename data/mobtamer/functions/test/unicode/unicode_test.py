import csv
import numpy as np
import json
import os

initials = ['a','b']

for initial in initials:
    for n in range(16):
        output = []
        for i in range(16):
            output.append('tellraw @a [{"text":"' + initial + format(n, '1x') + format(i, '1x') + 'x: "}')
            for j in range(16):
                output.append(',{"text":"\\u' + initial + format(n, '1x') + format(i, '1x') + format(j, '1x') + '"}')
            output.append(']\n')
        path = initial + format(n, '1x') + '.mcfunction'
        with open(path, 'w', encoding='utf-8') as f:
            f.writelines(output)
