execute as @e[type=item,tag=mt.gacha] if data entity @s {OnGround:1b} at @s run function mobtamer:sys/schedule/gacha/00

execute if entity @e[type=item,tag=mt.gacha,limit=1] run schedule function mobtamer:sys/schedule/gacha/0 1t replace
