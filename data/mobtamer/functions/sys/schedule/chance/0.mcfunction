execute as @e[type=#mobtamer:can_tame,tag=mt.chance] at @s run function mobtamer:sys/schedule/chance/00

execute if entity @e[type=#mobtamer:can_tame,tag=mt.chance] run schedule function mobtamer:sys/schedule/chance/0 1t replace
