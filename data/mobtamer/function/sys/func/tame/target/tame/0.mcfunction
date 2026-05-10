scoreboard players reset @s mt.score
effect clear @s fire_resistance
effect clear @s water_breathing
effect clear @s glowing
tag @s remove mt.success
execute positioned ~ ~-0.5 ~ run function mobtamer:sys/func/tame/target/tame/00
