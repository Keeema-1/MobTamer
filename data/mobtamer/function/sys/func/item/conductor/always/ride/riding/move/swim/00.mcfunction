
execute positioned as @s run tp @s ~ ~ ~ ~ 0

data modify storage mobtamer:temp data.Motion set from entity @s Motion
execute store result score #mt.motion.x mt.temp run data get storage mobtamer:temp data.player.Motion[0] 10000
execute store result score #mt.motion.z mt.temp run data get storage mobtamer:temp data.player.Motion[2] 10000
execute store result score #mt.speed mt.temp run attribute @s generic.movement_speed get 1000

scoreboard players operation #mt.motion.x mt.temp *= #mt.speed mt.temp
scoreboard players operation #mt.motion.z mt.temp *= #mt.speed mt.temp

execute if entity @s[type=squid] run function mobtamer:sys/func/item/conductor/always/ride/riding/move/swim/speed/0
execute if entity @s[type=glow_squid] run function mobtamer:sys/func/item/conductor/always/ride/riding/move/swim/speed/0
execute if entity @s[type=elder_guardian] run function mobtamer:sys/func/item/conductor/always/ride/riding/move/swim/speed/2
execute if entity @s[type=guardian] run function mobtamer:sys/func/item/conductor/always/ride/riding/move/swim/speed/2
execute if entity @s[type=turtle] run function mobtamer:sys/func/item/conductor/always/ride/riding/move/swim/speed/2
execute if entity @s[type=!squid,type=!glow_squid,type=!elder_guardian,type=!guardian,type=!turtle] run function mobtamer:sys/func/item/conductor/always/ride/riding/move/swim/speed/1

# title @a actionbar [{"storage":"mobtamer:temp","nbt":"data.Motion"}]

data modify entity @s Motion set from storage mobtamer:temp data.Motion
data remove storage mobtamer:temp data.Motion

scoreboard players reset #mt.motion.x mt.temp
scoreboard players reset #mt.motion.z mt.temp
scoreboard players reset #mt.speed mt.temp
