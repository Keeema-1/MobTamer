
execute if entity @s[nbt={OnGround:1b}] positioned as @s run tp @s ~ ~ ~ ~ 0
data modify entity @s Rotation[0] set from storage mobtamer:temp data.player.Rotation[0]

data modify storage mobtamer:temp data.Motion set from entity @s Motion
execute store result score $mt.motion.x mt.score run data get storage mobtamer:temp data.player.Motion[0] 10000
execute store result score $mt.motion.z mt.score run data get storage mobtamer:temp data.player.Motion[2] 10000
execute store result score $mt.speed mt.score run attribute @s generic.movement_speed get 1000

scoreboard players operation $mt.motion.x mt.score *= $mt.speed mt.score
scoreboard players operation $mt.motion.z mt.score *= $mt.speed mt.score

function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/0
execute if entity @s[type=!strider] if data entity @s {OnGround:1b} at @s rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #mobtamer:space run data modify storage mobtamer:temp data.Motion[1] set value 0.37
execute if entity @s[type=!strider] if data entity @s {OnGround:1b} at @s rotated ~20 0 positioned ^ ^ ^1 unless block ~ ~ ~ #mobtamer:space run data modify storage mobtamer:temp data.Motion[1] set value 0.37
execute if entity @s[type=!strider] if data entity @s {OnGround:1b} at @s rotated ~-20 0 positioned ^ ^ ^1 unless block ~ ~ ~ #mobtamer:space run data modify storage mobtamer:temp data.Motion[1] set value 0.37
execute if entity @s[type=strider] if data entity @s {OnGround:1b} at @s rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #mobtamer:space unless block ~ ~ ~ lava run data modify storage mobtamer:temp data.Motion[1] set value 0.37
execute if entity @s[type=strider] if data entity @s {OnGround:1b} at @s rotated ~20 0 positioned ^ ^ ^1 unless block ~ ~ ~ #mobtamer:space unless block ~ ~ ~ lava run data modify storage mobtamer:temp data.Motion[1] set value 0.37
execute if entity @s[type=strider] if data entity @s {OnGround:1b} at @s rotated ~-20 0 positioned ^ ^ ^1 unless block ~ ~ ~ #mobtamer:space unless block ~ ~ ~ lava run data modify storage mobtamer:temp data.Motion[1] set value 0.37
execute if entity @s[type=goat] if data entity @s {OnGround:1b} at @s rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #mobtamer:space run data modify storage mobtamer:temp data.Motion[1] set value 0.6
# execute if data entity @s {OnGround:1b} at @s rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ air run particle end_rod ~ ~2 ~ 0 0 0 0 1

data modify entity @s Motion set from storage mobtamer:temp data.Motion
data remove storage mobtamer:temp data.Motion

# title @a actionbar [{"entity":"@s","nbt":"Motion"}]

scoreboard players reset $mt.motion.x mt.score
scoreboard players reset $mt.motion.z mt.score
scoreboard players reset $mt.speed mt.score
