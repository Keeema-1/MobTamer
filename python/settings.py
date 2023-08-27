import csv
import numpy as np
import json
import os
import math

lang = 'en'
lang = 'ja'

database_path = 'settings_' + lang + '.json'

with open(database_path , encoding='utf-8') as f:
    database = json.load(f)

common_path = '../data/mobtamer/functions/'

def makedir(path):
    if not os.path.isdir(os.path.dirname(path)):
        os.makedirs(os.path.dirname(path))

if(1):
    output = []
    title = '【モブテイマー】データパック設定' if lang == 'ja' else '【MobTamer】 Datapack Settings'
    output.append('data modify storage mobtamer:database data.item.settings set value {mt_settings:1b,title:"' + title + '",author:"",filtered_title:"title",pages:[],HideFlags:32}\n')
    count = 0
    for group in database:
        l = 'data modify storage mobtamer:database data.item.settings.pages append value \'["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\\\n' + group["title"] + '\\\\n\\\\n","bold":"true","underlined":true}'
        for item in group["contents"]:
            count += 1
            trigger = count*10
            if "trigger" in item:
                trigger = item["trigger"]
            default = default = (',{"text":"\\\\n\\\\nデフォルト：' + item["states"][0][1] + '","color":"gray"}') if lang == 'ja' else (',{"text":"\\\\n\\\\nDefault：' + item["states"][0][1] + '","color":"gray"}')
            if len(item["states"]) == 1:
                default = ''
            l += ',{"text":"\\\\n"},{"text":"[' + item["display"]["title"] + ']","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set ' + str(trigger+1) + '"},"hoverEvent": {"action": "show_text","value": [{"text":"' + item["display"]["detail"] + '"}' + default + ']}}'
        l += ']\'\n'
        output.append(l)
    path = common_path + 'sys/database/item/settings.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

if(1):
    output = []
    for group in database:
        if not group["only_run_command"]:
            i = 0
            for item in group["contents"]:
                if group["each_player"]:
                    output.append('scoreboard players set $mt.player.settings.' + item["name"] + ' mt.score ' + str(2**i) + '\n')
                    i += int(math.log2(len(item["states"])))
                else:
                    output.append('data modify storage mobtamer:settings data merge value {' + item["name"] + ':' + str(item["states"][0][0]) + '}\n')
                if not len(item["states"]) == 1:
                    for command in item["states"][0][3]:
                        output.append(command + '\n')
    path = common_path + 'init_settings.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

if(1):
    output = []
    for group in database:
        if not group["only_run_command"]:
            i = 0
            for item in group["contents"]:
                if group["each_player"]:
                    output.append('scoreboard players set $mt.player.settings.' + item["name"] + ' mt.score ' + str(2**i) + '\n')
                    i += int(math.log2(len(item["states"])))
                else:
                    if not len(item["states"])==1:
                        for command in item["states"][0][3]:
                            output.append('execute unless data storage mobtamer:settings data.' + item["name"] + ' run ' + command + '\n')
                    output.append('execute unless data storage mobtamer:settings data.' + item["name"] + ' run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\\n　","color":"green"},{"text":"' + group["title"] + '／' + item["display"]["title"] + '","color":"yellow"}]\n')
                    output.append('execute unless data storage mobtamer:settings data.' + item["name"] + ' run data modify storage mobtamer:settings data merge value {' + item["name"] + ':' + str(item["states"][0][0]) + '}\n')
    path = common_path + 'update_settings.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

if(1):
    output = []
    for group in database:
        i = 0
        if group["class"] == 'each_player':
            for item in group["contents"]:
                i += 1
                output.append('scoreboard players set $mt.const mt.score ' + str(int(2*math.log2(len(item["states"])))) + '\n')
                output.append('scoreboard players operation $mt.player.settings mt.score = @s mt.settings\n')
                output.append('scoreboard players operation $mt.player.settings mt.score /= $mt.player.settings.' + item["name"] + ' mt.score\n')
                output.append('scoreboard players operation $mt.player.settings mt.score %= $mt.const mt.score\n')
                # output.append('execute store result storage mobtamer:temp data.player_settings.' + item["name"] + ' byte 1 run scoreboard players get $mt.player.settings mt.score\n')
                for j, state in enumerate(item["states"]):
                    output.append('execute if score $mt.player.settings mt.score matches ' + str(j) + ' run data modify storage mobtamer:temp data.player_settings.' + item["name"] + ' set value ' + state[0] + '\n')
    output.append('scoreboard players reset $mt.const mt.score\n')
    output.append('scoreboard players reset $mt.player.settings mt.score\n')
    path = common_path + 'sys/common/player/settings/score2storage.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

if(1):
    output = []
    output.append('scoreboard players set @s mt.settings 0\n')
    for group in database:
        i = 0
        if group["class"] == 'each_player':
            for item in group["contents"]:
                i += 1
                for j, state in enumerate(item["states"]):
                    output.append('execute if data storage mobtamer:temp data.player_settings{' + item["name"] + ':' + state[0] + '} run scoreboard players set $mt.player.settings mt.score ' + str(j) + '\n')
                # output.append('execute store result score $mt.player.settings mt.score run data get storage mobtamer:temp data.player_settings.' + item["name"] + '\n')
                output.append('scoreboard players operation $mt.player.settings mt.score *= $mt.player.settings.' + item["name"] + ' mt.score\n')
                output.append('scoreboard players operation @s mt.settings += $mt.player.settings mt.score\n')
    output.append('scoreboard players reset $mt.player.settings mt.score\n')
    path = common_path + 'sys/common/player/settings/storage2score.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

if(1):
    output = []
    count = 0
    for group in database:
        for item in group["contents"]:
            count += 1
            trigger = count*10
            if "trigger" in item:
                trigger = item["trigger"]
            output.append('execute if score @s mt.trigger matches ' + str(trigger+1) + ' run function mobtamer:sys/player/trigger/settings/' + item["name"] + '/start\n')
            if not group["only_run_command"]:
                output.append('execute if score @s mt.trigger matches ' + str(trigger+2) + ' run function mobtamer:sys/player/trigger/settings/' + item["name"] + '/change\n')
    path = common_path + 'sys/player/trigger/settings/0.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)
    
    count = 0
    for group in database:
        for item in group["contents"]:
            count += 1
            trigger = count*10
            if "trigger" in item:
                trigger = item["trigger"]
            output = []
            if not group["only_run_command"]:
                if group["each_player"]:
                    output.append('function mobtamer:sys/common/player/settings/score2storage\n')
                for state in item["states"]:
                    temp = '変更' if lang == 'ja' else 'Change'
                    default = (',{"text":"\\n\\nデフォルト：' + item["states"][0][1] + '","color":"gray"}') if lang == 'ja' else (',{"text":"\\n\\nDefault：' + item["states"][0][1] + '","color":"gray"}')
                    if len(item["states"]) == 1:
                        temp = '実行' if lang == 'ja' else 'Execute'
                        default = ''
                    if group["each_player"]:
                        output.append('execute if data storage mobtamer:temp data.player_settings{' + item["name"] + ':' + str(state[0]) + '} run tellraw @s ["",{"text": "  "},{"text": "' + item["display"]["title"] + '","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"' + item["display"]["detail"] + '"}' + default + ']}},{"text": "","color": "yellow"},{"text": " ＜' + state[1] + '＞ ","color": "' + state[2] + '"},{"text": "[' + temp + ']","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set ' + str(trigger+2) + '"}}]\n')
                    else:
                        output.append('execute if data storage mobtamer:settings data{' + item["name"] + ':' + str(state[0]) + '} run tellraw @s ["",{"text": "  "},{"text": "' + item["display"]["title"] + '","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"' + item["display"]["detail"] + '"}' + default + ']}},{"text": "","color": "yellow"},{"text": " ＜' + state[1] + '＞ ","color": "' + state[2] + '"},{"text": "[' + temp + ']","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set ' + str(trigger+2) + '"}}]\n')
                if group["each_player"]:
                    output.append('data remove storage mobtamer:temp data.player_settings\n')
            else:
                for command in item["commands"]:
                    output.append(command + '\n')
            path = common_path + 'sys/player/trigger/settings/' + item["name"] + '/start.mcfunction'
            makedir(path)
            with open(path, 'w', encoding='utf-8') as f:
                f.writelines(output)

    count = 0
    for group in database:
        for item in group["contents"]:
            count += 1
            trigger = count*10
            if "trigger" in item:
                trigger = item["trigger"]
            if not group["only_run_command"]:
                output = []
                if group["each_player"]:
                    output.append('function mobtamer:sys/common/player/settings/score2storage\n')
                for j, state in enumerate(item["states"]):
                    if group["each_player"]:
                        output.append('execute if data storage mobtamer:temp data.player_settings{' + item["name"] + ':' + str(state[0]) + '} run scoreboard players set $mt.check mt.score ' + str(j) + '\n')
                    else:
                        output.append('execute if data storage mobtamer:settings data{' + item["name"] + ':' + str(state[0]) + '} run scoreboard players set $mt.check mt.score ' + str(j) + '\n')
                for j, state in enumerate(item["states"]):
                    next_idx = j+1
                    if next_idx >= len(item["states"]):
                        next_idx = 0
                    if group["each_player"]:
                        output.append('execute if score $mt.check mt.score matches ' + str(j) + ' run data modify storage mobtamer:temp data.player_settings.' + item["name"] + ' set value ' + str(item["states"][next_idx][0]) + '\n')
                    else:
                        output.append('execute if score $mt.check mt.score matches ' + str(j) + ' run data modify storage mobtamer:settings data.' + item["name"] + ' set value ' + str(item["states"][next_idx][0]) + '\n')
                    temp = '変更' if lang == 'ja' else 'Change'
                    default = (',{"text":"\\n\\nデフォルト：' + item["states"][0][1] + '","color":"gray"}') if lang == 'ja' else (',{"text":"\\n\\nDefault：' + item["states"][0][1] + '","color":"gray"}')
                    if len(item["states"]) == 1:
                        temp = '実行' if lang == 'ja' else 'Execute'
                        default = ''
                    if not len(item["states"]) == 1:
                        output.append('execute if score $mt.check mt.score matches ' + str(j) + ' run tellraw @s ["",{"text": "  "},{"text": "' + item["display"]["title"] + '","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"' + item["display"]["detail"] + '"}' + default + ']}},{"text": "","color": "yellow"},{"text": " ＜' + item["states"][next_idx][1] + '＞ ","color": "' + item["states"][next_idx][2] + '"},{"text": "[' + temp + ']","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set ' + str(trigger+2) + '"}}]\n')
                    for command in item["states"][next_idx][3]:
                        output.append('execute if score $mt.check mt.score matches ' + str(j) + ' run ' + command + '\n')
                output.append('scoreboard players reset $mt.check mt.score\n')
                if group["each_player"]:
                    output.append('function mobtamer:sys/common/player/settings/storage2score\n')
                    output.append('data remove storage mobtamer:temp data.player_settings\n')
                path = common_path + 'sys/player/trigger/settings/' + item["name"] + '/change.mcfunction'
                makedir(path)
                with open(path, 'w', encoding='utf-8') as f:
                    f.writelines(output)
