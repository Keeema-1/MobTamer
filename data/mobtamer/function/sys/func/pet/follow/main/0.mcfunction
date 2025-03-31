#> mobtamer:sys/func/pet/follow/main/0
#
# ペットがプレイヤーを追従する
#
# @within function mobtamer:sys/player/pet/each/alive

execute if entity @s[type=breeze] if data entity @s Brain.memories.minecraft:breeze_jump_inhaling run return 1
execute if entity @s[type=breeze] if data entity @s Brain.memories.minecraft:breeze_shoot run return 1
execute if entity @s[type=breeze] if data entity @s Brain.memories.minecraft:breeze_shoot_cooldown run return 1

execute if entity @s[tag=!mt.following] run function mobtamer:sys/func/pet/follow/main/00
execute if entity @s[tag=mt.following] run function mobtamer:sys/func/pet/follow/main/01

execute if entity @s[type=!#mobtamer:fire_resistance] if data storage mobtamer:temp data.pet{OnGround:1b} at @s if block ~ ~-0.5 ~ #mobtamer:dangerous run data modify entity @s Motion[1] set value 0.37
execute if entity @s[type=#mobtamer:fire_resistance] if data storage mobtamer:temp data.pet{OnGround:1b} at @s if block ~ ~-0.5 ~ #mobtamer:dangerous_fire_resistance run data modify entity @s Motion[1] set value 0.37
