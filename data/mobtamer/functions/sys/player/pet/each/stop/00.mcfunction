
tag @s add mt.pet_equip_drop_check

data modify storage mobtamer:temp data.Item set from entity @s Item

execute if data entity @s Item.tag{mt_pet_equipment:1b} run function mobtamer:sys/player/pet/each/stop/equip_change/0

data remove storage mobtamer:temp data.Item
