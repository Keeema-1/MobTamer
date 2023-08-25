import csv
import numpy as np
import json

database_path = 'entity_data.csv'
database2_path = 'Cost.csv'

def is_num(s):
    try:
        float(s)
    except ValueError:
        return False
    else:
        return True

with open(database_path, encoding='utf-8-sig', newline='') as f:
    reader = csv.reader(f)
    database = [row for row in reader]
    headings = database[0]
    database = [row for row in database if row[database[0].index('Mob')]=='1']

with open(database2_path, encoding='utf-8-sig', newline='') as f:
    reader = csv.reader(f)
    database2 = [row for row in reader]
    headings2 = database2[0]
    database2 = database2[1:]

def get_column(heading):
    idx = headings.index(heading)
    return [row[idx] for row in database]

def write_entity_types_json(output_list, path):
    output = {"replace":False, "values":output_list}
    path = '../data/mobtamer/tags/entity_types/' + path + '.json'
    with open(path, 'w') as f:
        json.dump(output, f, indent=4)
    return

def get_column_as_np(heading):
    idx = headings.index(heading)
    # return np.array([(row[idx]).tofloat() if (row[idx]).isdecimal() else row[idx] for row in database])
    # return np.array([row[idx] for row in database])
    return np.array([float(row[idx]) if is_num(row[idx]) else np.nan for row in database])

def filter_name_list(condition):
    return [database_name[idx] for idx in (np.where(condition)[0]).tolist()]

database_name = get_column('Entity Name')
# print(database_name)

can_tame_list = filter_name_list(get_column_as_np('Can Tame') == 1)

# tags/entity_types/can_tame
write_entity_types_json(can_tame_list, 'can_tame')

#     # store spawn egg
#     output = []
#     for entity_name in can_tame_list:
#         output.append('execute if entity @s[type='+entity_name+'] run data modify storage mobtamer:temp data.Item.id set value "'+entity_name+'_spawn_egg"\n')
#     output.append('\n')
#     output.append('execute if entity @s[type=illusioner] run data modify storage mobtamer:temp data.Item.id set value "vindicator_spawn_egg"\n')
#     path = '../data/mobtamer/functions/sys/player/pet/each/store/each_type.mcfunction'
#     with open(path, 'w', encoding='utf-8') as f:
#         f.writelines(output)

#     # command tame
#     for entity_name in can_tame_list:
#         output = []
#         output.append('summon ' + entity_name + '\n')
#         output.append('execute as @e[team=,type=' + entity_name + ',tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame\n')
#         path = '../data/mobtamer/functions/command/tame/summon/' + entity_name + '.mcfunction'
#         with open(path, 'w', encoding='utf-8') as f:
#             f.writelines(output)
#     output = []
#     for entity_name in can_tame_list:
#         output.append('function mobtamer:command/tame/summon/' + entity_name + '\n')
#     path = '../data/mobtamer/functions/command/tame/summon/all.mcfunction'
#     with open(path, 'w', encoding='utf-8') as f:
#         f.writelines(output)

#     # command gacha
#     output = []
#     output.append('function mobtamer:sys/common/random/1024\n')
#     output.append('scoreboard players set $mt.temp mt.score ' + str(len(can_tame_list)) + '\n')
#     output.append('scoreboard players operation $mt.random mt.score %= $mt.temp mt.score\n')
#     i = 0
#     for entity_name in can_tame_list:
#         output.append('execute if score $mt.random mt.score matches ' + str(i) + ' run function mobtamer:command/tame/summon/' + entity_name + '\n')
#         i += 1
#     output.append('scoreboard players reset $mt.temp mt.score\n')
#     output.append('scoreboard players reset $mt.random mt.score\n')
#     path = '../data/mobtamer/functions/command/gacha/all.mcfunction'
#     with open(path, 'w', encoding='utf-8') as f:
#         f.writelines(output)

    # # advancement
    # for entity_name in can_tame_list:
    #     output = {
    #         "display": {
    #             "title": [{"translate":"entity.minecraft." + entity_name},{"text":"のテイム"}],
    #             "description": [
    #             {"text":""}
    #             ],
    #             "icon": {
    #             "item": "minecraft:" + entity_name + "_spawn_egg"
    #             }
    #         },
    #         "parent": "mobtamer:mobtamer/tame/tame_type",
    #         "criteria": {
    #             "enter": {
    #             "trigger": "minecraft:impossible"
    #             }
    #         },
    #         "rewards": {
    #             "function": "mobtamer:sys/player/advancement/mobtamer/tame/type/" + entity_name
    #         }
    #     }
    #     path = '../data/mobtamer/advancements/mobtamer/tame/type/' + entity_name + '.json'
    #     with open(path, 'w', encoding='utf-8') as f:
    #         json.dump(output, f, indent = 2)

if(1):
    for item in database2:
        idx = headings2.index("Max Cost Add")
        output = []
        output.append('scoreboard players operation $mt.cost.before mt.score = @s mt.cost\n')
        output.append('scoreboard players add @s mt.cost ' + item[idx] + '\n')
        output.append('scoreboard players add @s mt.tame_type_count 1\n')
        output.append('data modify storage mobtamer:database data.record.' + item[0] + '.any set value 1b\n')
        # output.append('tellraw @s {"text":"パーティーのコスト上限 +' + item[idx] + '","color": "aqua"}\n')
        output.append('tellraw @s [{"storage": "mobtamer:text","nbt":"data.cost.up","interpret": true,"color": "aqua"},{"text":" (","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"},"color": "aqua"},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"},"color": "aqua"},{"text":")","color": "aqua"}]\n')
        output.append('scoreboard players reset $mt.cost.before mt.score\n')
        path = '../data/mobtamer/functions/sys/player/advancement/mobtamer/tame/type/' + item[0] + '.mcfunction'
        with open(path, 'w', encoding='utf-8') as f:
            f.writelines(output)

if(1):
    output = filter_name_list(get_column_as_np('Can Revenge') == 1)
    write_entity_types_json(output, 'can_revenge')

if(1):
    output = filter_name_list(get_column_as_np('Can Fly') == 1)
    write_entity_types_json(output, 'can_fly')

if(1):
    tmp_list = filter_name_list(get_column_as_np('Mob') == 1)
    # tags/entity_types/all_mobs
    write_entity_types_json(tmp_list, 'all_mobs')

if(1):
    tmp_list = filter_name_list(get_column_as_np('Undead') == 1)
    # tags/entity_types/undead
    write_entity_types_json(tmp_list, 'undead')

if(1):
    tmp_list = filter_name_list(get_column_as_np('Burn in the Sun') == 1)
    # tags/entity_types/burn_in_the_sun
    write_entity_types_json(tmp_list, 'burn_in_the_sun')

if(1):
    other_filter = np.full(len(database), True)

    filter = (get_column_as_np('Width') > 1.0)
    hitbox_list = filter_name_list(filter)
    write_entity_types_json(hitbox_list, 'hitbox/wide')
    other_filter = np.logical_not(filter) & other_filter
    print('wide')
    print(hitbox_list)
    print()

    filter = (get_column_as_np('Height') > 2.0)
    hitbox_list = filter_name_list(filter)
    write_entity_types_json(hitbox_list, 'hitbox/tall')
    other_filter = np.logical_not(filter) & other_filter
    print('tall')
    print(hitbox_list)
    print()

# if(1):
#     other_filter = np.full(len(database), True)

#     filter = other_filter & (get_column_as_np('Height') <= 1.0) & (get_column_as_np('Width') <= 0.7)
#     hitbox_list = filter_name_list(filter)
#     write_entity_types_json(hitbox_list, 'hitbox/small')
#     other_filter = np.logical_not(filter) & other_filter
#     print('small')
#     print(hitbox_list)
#     print()

#     filter = other_filter & (get_column_as_np('Height') <= 2.0) & (get_column_as_np('Width') <= 0.7)
#     hitbox_list = filter_name_list(filter)
#     write_entity_types_json(hitbox_list, 'hitbox/human')
#     other_filter = np.logical_not(filter) & other_filter
#     print('human')
#     print(hitbox_list)
#     print()

#     filter = other_filter & (get_column_as_np('Height') <= 3.0) & (get_column_as_np('Width') <= 0.7)
#     hitbox_list = filter_name_list(filter)
#     write_entity_types_json(hitbox_list, 'hitbox/human_tall')
#     other_filter = np.logical_not(filter) & other_filter
#     print('human tall')
#     print(hitbox_list)
#     print()

#     filter = other_filter & (get_column_as_np('Height') <= 1.0) & (get_column_as_np('Width') <= 1.4)
#     hitbox_list = filter_name_list(filter)
#     write_entity_types_json(hitbox_list, 'hitbox/low_mid')
#     other_filter = np.logical_not(filter) & other_filter
#     print('low mid')
#     print(hitbox_list)
#     print()

#     filter = other_filter & (get_column_as_np('Height') <= 2.0) & (get_column_as_np('Width') <= 1.4)
#     hitbox_list = filter_name_list(filter)
#     write_entity_types_json(hitbox_list, 'hitbox/mid')
#     other_filter = np.logical_not(filter) & other_filter
#     print('mid')
#     print(hitbox_list)
#     print()

#     filter = other_filter & (get_column_as_np('Height') <= 3.0) & (get_column_as_np('Width') <= 2.0)
#     hitbox_list = filter_name_list(filter)
#     write_entity_types_json(hitbox_list, 'hitbox/big')
#     other_filter = np.logical_not(filter) & other_filter
#     print('big')
#     print(hitbox_list)
#     print()

#     hitbox_list = filter_name_list(other_filter)
#     print('other')
#     write_entity_types_json(hitbox_list, 'hitbox/other')
#     print(hitbox_list)
#     print()
