execute as @e[type=item,tag=mt.egg.power_up] at @s run function mobtamer:sys/schedule/pet_egg/power_up/0

# execute if entity @e[type=item,tag=mt.egg.power_up] run tellraw @a "test"

execute if entity @e[type=item,tag=mt.egg.power_up] run schedule function mobtamer:sys/schedule/pet_egg/0 1t replace
