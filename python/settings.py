import csv
import numpy as np
import json
import os

database_path = 'settings.json'

with open(database_path , encoding='utf-8') as f:
    database = json.load(f)

common_path = '../data/mobtamer/functions/'

def makedir(path):
    if not os.path.isdir(os.path.dirname(path)):
        os.makedirs(os.path.dirname(path))

if(1):
    output = []
    output.append('data modify storage mobtamer:database data.item.settings set value {title:"【モブテイマー】データパック設定",author:"",filtered_title:"title",pages:[],HideFlags:32}\n')
    count = 0
    for group in database:
        l = 'data modify storage mobtamer:database data.item.settings.pages append value \'["",{"text":"' + group["title"] + '\\\\n\\\\n","bold":"true","underlined":true}'
        for item in group["contents"]:
            count += 1
            l += ',{"text":"\\\\n"},{"text":"[' + item["display"]["title"] + ']","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set ' + str(count*10+1) + '"},"hoverEvent": {"action": "show_text","value": [{"text":"' + item["display"]["detail"] + '"},{"text":"\\\\n\\\\nデフォルト：' + item["states"][0][1] + '","color":"gray"}]}}'
        l += ']\'\n'
        output.append(l)
    path = common_path + 'sys/database/item/settings.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

if(1):
    output = []
    for group in database:
        for item in group["contents"]:
            output.append('data modify storage mobtamer:settings data merge value {' + item["name"] + ':' + str(item["states"][0][0]) + '}\n')
            for command in item["states"][0][3]:
                output.append(command + '\n')
    path = common_path + 'init_settings.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

if(1):
    output = []
    count = 0
    for group in database:
        for item in group["contents"]:
            count += 1
            output.append('execute if score @s mt.trigger matches ' + str(count*10+1) + ' run function mobtamer:sys/player/trigger/settings/' + item["name"] + '/start\n')
            output.append('execute if score @s mt.trigger matches ' + str(count*10+2) + ' run function mobtamer:sys/player/trigger/settings/' + item["name"] + '/change\n')
    path = common_path + 'sys/player/trigger/settings/0.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)
    
    count = 0
    for group in database:
        for item in group["contents"]:
            count += 1
            output = []
            for state in item["states"]:
                output.append('execute if data storage mobtamer:settings data{' + item["name"] + ':' + str(state[0]) + '} run tellraw @s ["",{"text": "  "},{"text": "' + item["display"]["title"] + '","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"' + item["display"]["detail"] + '"},{"text":"\\n\\nデフォルト：' + item["states"][0][1] + '","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜' + state[1] + '＞ ","color": "' + state[2] + '"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set ' + str(count*10+2) + '"}}]\n')
            path = common_path + 'sys/player/trigger/settings/' + item["name"] + '/start.mcfunction'
            makedir(path)
            with open(path, 'w', encoding='utf-8') as f:
                f.writelines(output)
    
    count = 0
    for group in database:
        for item in group["contents"]:
            count += 1
            output = []
            for j, state in enumerate(item["states"]):
                output.append('execute if data storage mobtamer:settings data{' + item["name"] + ':' + str(state[0]) + '} run scoreboard players set $mt.check mt.score ' + str(j) + '\n')
            for j, state in enumerate(item["states"]):
                next_idx = j+1
                if next_idx >= len(item["states"]):
                    next_idx = 0
                output.append('execute if score $mt.check mt.score matches ' + str(j) + ' run data modify storage mobtamer:settings data.' + item["name"] + ' set value ' + str(item["states"][next_idx][0]) + '\n')
                output.append('execute if score $mt.check mt.score matches ' + str(j) + ' run tellraw @s ["",{"text": "  "},{"text": "' + item["display"]["title"] + '","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"' + item["display"]["detail"] + '"},{"text":"\\n\\nデフォルト：' + item["states"][0][1] + '","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜' + item["states"][next_idx][1] + '＞ ","color": "' + item["states"][next_idx][2] + '"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set ' + str(count*10+2) + '"}}]\n')
                for command in item["states"][next_idx][3]:
                    output.append('execute if score $mt.check mt.score matches ' + str(j) + ' run ' + command + '\n')
            output.append('scoreboard players reset $mt.check mt.score\n')
            path = common_path + 'sys/player/trigger/settings/' + item["name"] + '/change.mcfunction'
            makedir(path)
            with open(path, 'w', encoding='utf-8') as f:
                f.writelines(output)
