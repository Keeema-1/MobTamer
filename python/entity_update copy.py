import csv
import numpy as np
import json

database_path = 'entity_data.csv'

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

def get_column(heading):
    idx = headings.index(heading)
    return [row[idx] for row in database]

def get_column_as_np(heading):
    idx = headings.index(heading)
    # return np.array([(row[idx]).tofloat() if (row[idx]).isdecimal() else row[idx] for row in database])
    # return np.array([row[idx] for row in database])
    return np.array([float(row[idx]) if is_num(row[idx]) else np.nan for row in database])

def filter_name_list(condition):
    return [database_name[idx] for idx in (np.where(condition)[0]).tolist()]

database_name = get_column('Entity Name')
# print(database_name)

if(1):
    can_tame_list = filter_name_list(get_column_as_np('Can Tame') == 1)

    # tags/entity_types/can_tame
    output = {"replace":False, "values":can_tame_list}
    path = '../data/mobtamer/tags/entity_types/can_tame.json'
    with open(path, 'w') as f:
        json.dump(output, f, indent=4)

    # store spawn egg
    output = []
    for entity_name in can_tame_list:
        output.append('execute if entity @s[type='+entity_name+'] run data modify storage mobtamer:temp data.Item.id set value "'+entity_name+'_spawn_egg"\n')
    path = '../data/mobtamer/functions/sys/player/pet/each/store/each_type.mcfunction'
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(output)

if(1):
    human_filter = (get_column_as_np('Height') < 2.0) & (get_column_as_np('Height') >= 1.0) & (get_column_as_np('Width') <= 0.7)
    hitbox_human_list = filter_name_list(human_filter)
    other_filter = np.logical_not(human_filter)
    print('human')
    print(hitbox_human_list)
    print()

    human_tall_filter = (other_filter & (get_column_as_np('Height') >= 2.0) & (get_column_as_np('Width') <= 0.7))
    hitbox_human_tall_list = filter_name_list(human_tall_filter)
    other_filter = np.logical_not(human_tall_filter) & other_filter
    print('human tall')
    print(hitbox_human_tall_list)
    print()

    small_filter = (other_filter & (get_column_as_np('Height') < 1.0) & (get_column_as_np('Width') <= 0.7))
    hitbox_human_tall_list = filter_name_list(small_filter)
    other_filter = np.logical_not(small_filter) & other_filter
    print('small')
    print(hitbox_human_tall_list)
    print()

    hitbox_other_list = filter_name_list(other_filter)
    print('other')
    print(hitbox_other_list)
    print()
