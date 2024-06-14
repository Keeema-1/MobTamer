
tag @s add mt.pet_equip_drop_check

data modify storage mobtamer:temp data.Item set from entity @s Item

execute if data entity @s Item.comopnents."minecraft:custom_data"{mt_pet_equipment:1b,mt_equipment_part:"mainhand"} run function mobtamer:sys/player/pet/each/stop/equip_change/only_mainhand

execute if data entity @s Item{id:"minecraft:armor_stand"} as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] at @s run function mobtamer:sys/player/pet/each/stop/equip_drop/0

data remove storage mobtamer:temp data.Item
