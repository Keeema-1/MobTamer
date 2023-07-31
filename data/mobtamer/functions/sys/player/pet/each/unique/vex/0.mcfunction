
execute unless data entity @s {HurtTime:0s} run return 1
execute if score @s mt.hostile_interval matches 1.. run return 1

forceload add 0 0

execute at @s on target positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 facing entity @s feet positioned 0. 0. 0. summon marker run function mobtamer:sys/player/pet/each/unique/vex/00
execute at @s on target positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 facing entity @s feet as @e[team=!,type=vex,tag=mt.pet_check,limit=1] run tp ^ ^ ^
execute at @s on target positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 as @e[team=!,type=vex,tag=mt.pet_check,limit=1] run function mobtamer:sys/player/pet/each/unique/vex/01

data modify entity @s Motion set from storage mobtamer:temp data.rot2vec.Pos

data remove storage mobtamer:temp data.rot2vec
