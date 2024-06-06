
tag @s add mt.unique_item_check

data modify storage mobtamer:temp data.Item set from entity @s Item

execute if data entity @s Item.tag{mt_pet_release:1b} run function mobtamer:sys/player/pet/each/stop/release/0
execute if data entity @s Item.tag{mt_custom_attack:1b} run function mobtamer:sys/player/pet/each/stop/custom_attack/0

data remove storage mobtamer:temp data.Item
