execute as @e[type=#mobtamer:can_tame,tag=mt.chance,tag=!mt.success] at @s run function mobtamer:sys/schedule/chance/00
execute as @e[type=#mobtamer:can_tame,tag=mt.chance,tag=mt.success] at @s run function mobtamer:sys/schedule/chance/01

execute if entity @e[type=#mobtamer:can_tame,tag=mt.chance] run schedule function mobtamer:sys/schedule/chance/0 1t replace
