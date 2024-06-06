
tag @s add mt.pet_equip_drop_check

data modify storage mobtamer:temp data.Item set from entity @s Item

execute if data entity @s Item.tag{mt_pet_equipment:1b} run function mobtamer:sys/player/pet/each/stop/equip_change/all

execute if data entity @s Item{id:"minecraft:armor_stand"} as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] at @s run function mobtamer:sys/player/pet/each/stop/equip_drop/0

data remove storage mobtamer:temp data.Item
