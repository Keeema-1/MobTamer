
execute on origin run function mobtamer:sys/display/pet/0

scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.pet mt.health /= $mt.const mt.score
scoreboard players operation $mt.pet mt.max_health /= $mt.const mt.score

tag @s add mt.check
# data modify entity @s Pos set from storage mobtamer:temp data.pet.Pos
execute on origin anchored eyes at @s run tp @e[type=area_effect_cloud,tag=mt.check,limit=1] ^ ^0.4 ^
data modify entity @s Air set from entity @s Age
tag @s remove mt.check

# title @a actionbar [{"selector":"@s"},{"text": " "},{"score":{"name": "$mt.pet","objective": "mt.health"}}]
