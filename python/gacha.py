import csv
import numpy as np
import json
import os

common_path = '../data/mobtamer/functions/'

database_path = 'gacha.csv'

with open(database_path, encoding='utf-8-sig', newline='') as f:
    reader = csv.reader(f)
    database = [row for row in reader]
    headings = database[0]
    database = database[1:]

def bronze_weight(weight):
    return weight if weight >= 30 else 0

def silver_weight(weight):
    y = weight
    if weight < 30:
        y = 0
    elif weight >= 300:
        y = 0
    return y

def gold_weight(weight):
    y = weight
    if weight >= 250:
        y = 0
    elif weight >= 100:
        y = 100
    return y

# entity_list = []
# weight_list = []
name_idx = headings.index('Entity Name')
weight_idx = headings.index('weight')
bronze_weight_sum = 0
silver_weight_sum = 0
gold_weight_sum = 0
for item in database:
    # entity_list.append(item[name_idx])
    # weight_list.append(item[weight_idx])
    bronze_weight_sum += bronze_weight(int(item[weight_idx]))
    silver_weight_sum += silver_weight(int(item[weight_idx]))
    gold_weight_sum += gold_weight(int(item[weight_idx]))

for gacha in ['bronze', 'silver', 'gold']:
    for x in range(2):
        output = []
        output.append('scoreboard players reset $mt.not_tamed mt.score\n')
        output.append('scoreboard players set $mt.temp mt.score 1024\n')
        output.append('function mobtamer:sys/common/random/1024\n')
        output.append('scoreboard players operation $mt.temp mt.score *= $mt.random mt.score\n')
        output.append('function mobtamer:sys/common/random/1024\n')
        output.append('scoreboard players operation $mt.random mt.score += $mt.temp mt.score\n')
        if gacha == 'bronze':
            output.append('scoreboard players set $mt.temp mt.score ' + str(bronze_weight_sum) + '\n')
        elif gacha == 'silver':
            output.append('scoreboard players set $mt.temp mt.score ' + str(silver_weight_sum) + '\n')
        elif gacha == 'gold':
            output.append('scoreboard players set $mt.temp mt.score ' + str(gold_weight_sum) + '\n')
        output.append('scoreboard players operation $mt.random mt.score %= $mt.temp mt.score\n')
        n = 0
        for item in database:
            if gacha == 'bronze':
                weight = bronze_weight(int(item[weight_idx]))
            elif gacha == 'silver':
                weight = silver_weight(int(item[weight_idx]))
            elif gacha == 'gold':
                weight = gold_weight(int(item[weight_idx]))
            if weight > 0:
                if x == 0:
                    output.append('execute if score $mt.random mt.score matches ' + str(n) + '..' + str(n+weight-1) + ' run function mobtamer:sys/common/gacha/only_already_tamed/each/' + item[name_idx] + '\n')
                else:
                    output.append('execute if score $mt.random mt.score matches ' + str(n) + '..' + str(n+weight-1) + ' run function mobtamer:command/tame/summon/' + item[name_idx] + '\n')
            n += weight
        output.append('scoreboard players reset $mt.temp mt.score\n')
        output.append('scoreboard players reset $mt.random mt.score\n')
        if x == 0:
            output.append('execute if score $mt.not_tamed mt.score matches 1.. run function mobtamer:sys/common/gacha/only_already_tamed/' + gacha + '\n')
        output.append('scoreboard players reset $mt.not_tamed mt.score\n')
        if x == 0:
            path = common_path + 'sys/common/gacha/only_already_tamed/' + gacha + '.mcfunction'
        else:
            path = common_path + 'sys/common/gacha/any/' + gacha + '.mcfunction'
        with open(path, 'w', encoding='utf-8') as f:
            f.writelines(output)


        if x == 0:
            for item in database:
                output = []
                output.append('execute if data storage mobtamer:database data.record.' + item[name_idx] + '{any:1b} run function mobtamer:command/tame/summon/' + item[name_idx] + '\n')
                output.append('execute unless data storage mobtamer:database data.record.' + item[name_idx] + '{any:1b} run scoreboard players set $mt.not_tamed mt.score 1\n')
                path = common_path + 'sys/common/gacha/only_already_tamed/each/' + item[name_idx] + '.mcfunction'
                with open(path, 'w', encoding='utf-8') as f:
                    f.writelines(output)