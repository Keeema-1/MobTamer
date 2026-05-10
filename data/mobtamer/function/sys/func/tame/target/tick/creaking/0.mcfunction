
execute as @e[type=area_effect_cloud,tag=mt.creaking_heart_pos] at @s run function mobtamer:sys/func/tame/target/tick/creaking/00

execute if entity @e[type=area_effect_cloud,tag=mt.creaking_heart_pos] run schedule function mobtamer:sys/func/tame/target/tick/creaking/0 1t replace
