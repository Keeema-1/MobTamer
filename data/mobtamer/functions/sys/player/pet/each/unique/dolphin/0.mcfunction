
execute unless data entity @s {HurtTime:0s} run return 1

forceload add 0 0

execute at @s on target unless entity @s[distance=..0.5] facing entity @s feet positioned 0. 0. 0. summon marker run function mobtamer:sys/player/pet/each/unique/dolphin/00
execute at @s on target unless entity @s[distance=..0.5] facing entity @s feet as @e[team=!,type=dolphin,tag=mt.pet_check,limit=1] run tp ^ ^ ^

data modify entity @s Motion set from storage mobtamer:temp data.rot2vec.Pos

data remove storage mobtamer:temp data.rot2vec
