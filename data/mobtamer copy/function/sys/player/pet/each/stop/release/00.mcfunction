
tag @s remove mt.pet
tag @s remove mt.down

data merge entity @s {CustomNameVisible:1b,NoAI:0b,NoGravity:0b,Invulnerable:0b}

data modify storage mobtamer:temp data.drop_item.head set from storage mobtamer:temp data.pet.ArmorItems[3]
execute if data storage mobtamer:temp data.drop_item.head.components."minecraft:custom_data"{mt_pet_equipment:1b} run data modify entity @s ArmorDropChances[3] set value 2.0f

data modify storage mobtamer:temp data.drop_item.chest set from storage mobtamer:temp data.pet.ArmorItems[2]
execute if data storage mobtamer:temp data.drop_item.chest.components."minecraft:custom_data"{mt_pet_equipment:1b} run data modify entity @s ArmorDropChances[2] set value 2.0f

data modify storage mobtamer:temp data.drop_item.legs set from storage mobtamer:temp data.pet.ArmorItems[1]
execute if data storage mobtamer:temp data.drop_item.legs.components."minecraft:custom_data"{mt_pet_equipment:1b} run data modify entity @s ArmorDropChances[1] set value 2.0f

data modify storage mobtamer:temp data.drop_item.feet set from storage mobtamer:temp data.pet.ArmorItems[0]
execute if data storage mobtamer:temp data.drop_item.feet.components."minecraft:custom_data"{mt_pet_equipment:1b} run data modify entity @s ArmorDropChances[0] set value 2.0f

data modify storage mobtamer:temp data.drop_item.mainhand set from storage mobtamer:temp data.pet.HandItems[0]
execute if data storage mobtamer:temp data.drop_item.mainhand.components."minecraft:custom_data"{mt_pet_equipment:1b} run data modify entity @s HandDropChances[0] set value 2.0f

data modify storage mobtamer:temp data.drop_item.offhand set from storage mobtamer:temp data.pet.HandItems[1]
execute if data storage mobtamer:temp data.drop_item.offhand.components."minecraft:custom_data"{mt_pet_equipment:1b} run data modify entity @s HandDropChances[1] set value 2.0f

data remove entity @s ArmorItems[].components.Unbreakable
data remove entity @s HandItems[].components.Unbreakable

data remove storage mobtamer:temp data.drop_item

execute store result entity @s attributes[{id:"minecraft:generic.max_health"}].base double 0.01 run scoreboard players get @s mt.max_health

scoreboard players reset @s

team join mt.common

tellraw @a[tag=mt.player_check] [{"selector":"@s"},{"storage": "mobtamer:text","nbt":"data.pet.release","interpret": true}]

execute on passengers if entity @s[type=area_effect_cloud] run kill @s
execute on passengers if entity @s[type=marker] run kill @s
execute on passengers if entity @s[type=text_display] run kill @s

execute on passengers run ride @s dismount
ride @s dismount
