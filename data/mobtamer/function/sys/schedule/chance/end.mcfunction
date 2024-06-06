effect clear @s fire_resistance
effect clear @s glowing
scoreboard players reset @s mt.score
tag @s remove mt.chance
scoreboard players reset @s mt.id
data merge entity @s {AbsorptionAmount:0f}
particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.002 6
