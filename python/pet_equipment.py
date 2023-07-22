import csv
import numpy as np
import json
import os

common_path = '../data/mobtamer/functions/'

database = [
    {"id":"wooden_hoe", "release": 1, "weight": 12, "price": 3, "part": "mainhand"},
    {"id":"golden_hoe", "release": 1, "weight": 12, "price": 3, "part": "mainhand"},
    {"id":"leather_helmet", "release": 1, "weight": 8, "price": 2, "part": "head"},
    {"id":"leather_chestplate", "release": 1, "weight": 8, "price": 4, "part": "chest"},
    {"id":"leather_leggings", "release": 1, "weight": 8, "price": 3, "part": "legs"},
    {"id":"leather_boots", "release": 1, "weight": 8, "price": 2, "part": "feet"},

    {"id":"wooden_pickaxe", "release": 2, "weight": 8, "price": 4, "part": "mainhand"},
    {"id":"wooden_shovel", "release": 2, "weight": 8, "price": 4, "part": "mainhand"},
    {"id":"golden_pickaxe", "release": 2, "weight": 8, "price": 4, "part": "mainhand"},
    {"id":"golden_shovel", "release": 2, "weight": 8, "price": 4, "part": "mainhand"},
    {"id":"golden_helmet", "release": 2, "weight": 6, "price": 4, "part": "head"},
    {"id":"golden_chestplate", "release": 2, "weight": 6, "price": 7, "part": "chest"},
    {"id":"golden_leggings", "release": 2, "weight": 6, "price": 5, "part": "legs"},
    {"id":"golden_boots", "release": 2, "weight": 6, "price": 3, "part": "feet"},

    {"id":"stone_hoe", "release": 3, "weight": 6, "price": 3, "part": "mainhand"},
    {"id":"stone_pickaxe", "release": 3, "weight": 6, "price": 7, "part": "mainhand"},
    {"id":"stone_shovel", "release": 3, "weight": 6, "price": 8, "part": "mainhand"},
    {"id":"chainmail_helmet", "release": 3, "weight": 4, "price": 5, "part": "head"},
    {"id":"chainmail_chestplate", "release": 3, "weight": 4, "price": 8, "part": "chest"},
    {"id":"chainmail_leggings", "release": 3, "weight": 4, "price": 7, "part": "legs"},
    {"id":"chainmail_boots", "release": 3, "weight": 4, "price": 4, "part": "feet"},

    {"id":"wooden_sword", "release": 4, "weight": 4, "price": 12, "part": "mainhand"},
    {"id":"golden_sword", "release": 4, "weight": 4, "price": 12, "part": "mainhand"},
    {"id":"stone_sword", "release": 4, "weight": 3, "price": 14, "part": "mainhand"},

    {"id":"iron_pickaxe", "release": 5, "weight": 4, "price": 13, "part": "mainhand"},
    {"id":"iron_shovel", "release": 5, "weight": 4, "price": 14, "part": "mainhand"},
    {"id":"iron_sword", "release": 5, "weight": 2, "price": 17, "part": "mainhand"},
    {"id":"iron_hoe", "release": 5, "weight": 4, "price": 3, "part": "mainhand"},
    {"id":"iron_helmet", "release": 5, "weight": 3, "price": 7, "part": "head"},
    {"id":"iron_chestplate", "release": 5, "weight": 3, "price": 11, "part": "chest"},
    {"id":"iron_leggings", "release": 5, "weight": 3, "price": 10, "part": "legs"},
    {"id":"iron_boots", "release": 5, "weight": 3, "price": 7, "part": "feet"},
    {"id":"bow", "release": 5, "weight": 5, "price": 15, "part": "mainhand"},
    {"id":"crossbow", "release": 5, "weight": 5, "price": 15, "part": "mainhand"},

    {"id":"wooden_axe", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"golden_axe", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"iron_axe", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"stone_axe", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"diamond_axe", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"diamond_sword", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"diamond_hoe", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"diamond_shovel", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"diamond_pickaxe", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"diamond_helmet", "release": 6, "weight": 1, "price": 32, "part": "head"},
    {"id":"diamond_chestplate", "release": 6, "weight": 1, "price": 32, "part": "chest"},
    {"id":"diamond_leggings", "release": 6, "weight": 1, "price": 32, "part": "legs"},
    {"id":"diamond_boots", "release": 6, "weight": 1, "price": 32, "part": "feet"},
    {"id":"elytra", "release": 6, "weight": 1, "price": 32, "part": "chest"},
    {"id":"trident", "release": 6, "weight": 1, "price": 32, "part": "mainhand"},
    {"id":"turtle_helmet", "release": 6, "weight": 1, "price": 32, "part": "head"},

]

for item in database:
    output = []
    output.append('summon item ~ ~ ~ {PickupDelay:0,Item:{Count:1b,id:"' + item["id"] + '",tag:{mt_pet_equipment:1b,mt_equipment_part:"' + item["part"] + '",display:{Name:\'[{"translate":"item.minecraft.' + item["id"] + '","italic":false},{"text": "（ペット用）","italic":false}]\',Lore:[\'[{"text":"コンダクターで停止させた","italic":false}]\',\'[{"text":"ペットに向かってドロップ","italic":false}]\',\'[{"text":"することで装備させること","italic":false}]\',\'[{"text":"ができます。","italic":false}]\']}}}}\n')
    path = common_path + 'command/give/pet_equipment/' + item["id"] + '.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

for i in range(1, 7):
    weight_sum = 0
    for item in database:
        if item["release"] <= i:
            weight_sum += item["weight"]

    output = []
    output.append('function mobtamer:sys/common/random/1024\n')
    output.append('scoreboard players set $mt.temp mt.score ' + str(weight_sum) + '\n')
    output.append('scoreboard players operation $mt.random mt.score %= $mt.temp mt.score\n')
    k = 0
    for item in database:
        if item["release"] <= i:
            weight_sum += item["weight"]
            output.append('execute if score $mt.random mt.score matches ' + str(k) + '..' + str(k+item["weight"]-1) + ' run function mobtamer:sys/trader/daily_change/pet_equipment/append/' + item["id"] + '\n')
            k += item["weight"]
    path = common_path + 'sys/trader/daily_change/pet_equipment/0' + str(i) + '.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

    for item in database:
        output = []
        output.append('data modify storage mobtamer:temp data.item set value {}\n')
        output.append('data modify storage mobtamer:temp data.item merge value {buy:{id:"' + item["id"] + '",Count:1b},buyB:{id:"emerald",Count:' + str(item["price"]) + 'b}}\n')
        output.append('data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:1}\n')
        output.append('data modify storage mobtamer:temp data.item merge value {sell:{id:"' + item["id"] + '",Count:1b,tag:{mt_pet_equipment:1b,mt_equipment_part:"' + item["part"] + '",display:{Name:\'[{"translate":"item.minecraft.' + item["id"] + '","italic":false},{"text": "（ペット用）","italic":false}]\',Lore:[\'[{"text":"コンダクターで停止させた","italic":false}]\',\'[{"text":"ペットに向かってドロップ","italic":false}]\',\'[{"text":"することで装備させること","italic":false}]\',\'[{"text":"ができます。","italic":false}]\']}}}}\n')
        output.append('data modify storage mobtamer:database data.daily.pet_equipment append from storage mobtamer:temp data.item\n')
        output.append('data remove storage mobtamer:temp data.item\n')
        path = common_path + 'sys/trader/daily_change/pet_equipment/append/' + item["id"] + '.mcfunction'
        with open(path, 'w', encoding='utf-8') as f:
            f.writelines(output)

