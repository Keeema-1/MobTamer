scoreboard players reset @s mt.score
effect clear @s fire_resistance
effect clear @s water_breathing
effect clear @s glowing
tag @s remove mt.success
execute positioned ~ ~1 ~ run function mobtamer:sys/tame/success/common/0
