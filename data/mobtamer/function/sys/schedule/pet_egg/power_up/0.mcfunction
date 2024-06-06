
execute on origin run function mobtamer:sys/schedule/pet_egg/power_up/player

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=mt.player_check,dx=0,dy=0,dz=0,limit=1] run function mobtamer:sys/schedule/pet_egg/power_up/store
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=mt.player_check,dx=0,dy=0,dz=0,limit=1] if entity @a[tag=mt.player_check,limit=1] unless entity @a[tag=mt.player_check,distance=..8,limit=1] run function mobtamer:sys/schedule/pet_egg/power_up/store

execute at @s as @e[type=interaction,tag=mt.interaction.power_up,distance=..4] run function mobtamer:sys/schedule/pet_egg/power_up/interaction/0

execute if score $mt.interaction.action mt.score matches 1.. run function mobtamer:sys/schedule/pet_egg/power_up/power_up/0

tag @a[tag=mt.player_check] remove mt.player_check

scoreboard players reset $mt.interaction.action mt.score