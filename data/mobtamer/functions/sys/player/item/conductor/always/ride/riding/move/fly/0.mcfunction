
execute positioned as @s run tp @s ~ ~ ~ ~ 0

data modify storage mobtamer:temp data.Motion set from entity @s Motion
execute store result score $mt.motion.x mt.score run data get storage mobtamer:temp data.player.Motion[0] 10000
execute store result score $mt.motion.z mt.score run data get storage mobtamer:temp data.player.Motion[2] 10000
execute store result score $mt.speed mt.score run attribute @s generic.movement_speed get 1000

scoreboard players operation $mt.motion.x mt.score *= $mt.speed mt.score
scoreboard players operation $mt.motion.z mt.score *= $mt.speed mt.score

function mobtamer:sys/player/item/conductor/always/ride/riding/move/fly/speed/1
execute if entity @s[type=allay] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/fly/speed/2
execute if entity @s[type=ghast] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/fly/speed/3
execute if entity @s[type=vex] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/fly/speed/4
execute if entity @s[type=bat] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/fly/speed/4

# title @a actionbar [{"storage":"mobtamer:temp","nbt":"data.Motion"}]

data modify entity @s Motion set from storage mobtamer:temp data.Motion
data remove storage mobtamer:temp data.Motion

scoreboard players reset $mt.motion.x mt.score
scoreboard players reset $mt.motion.z mt.score
scoreboard players reset $mt.speed mt.score
