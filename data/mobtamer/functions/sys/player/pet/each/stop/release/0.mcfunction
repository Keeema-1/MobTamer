
execute as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] run function mobtamer:sys/player/pet/each/stop/release/00

execute store result entity @s Item.Count byte 0.9999 run data get entity @s Item.Count
