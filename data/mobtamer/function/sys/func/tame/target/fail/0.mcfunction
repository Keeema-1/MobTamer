effect clear @s fire_resistance
effect clear @s glowing
scoreboard players reset @s mt.score
tag @s remove mt.chance
scoreboard players reset @s mt.id
data merge entity @s {AbsorptionAmount:0f}
particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.002 6

# クリーキングの場合：エリアエフェクトクラウドをkill
    execute if entity @s[type=!creaking] run return 1
    execute as @e[type=area_effect_cloud,tag=mt.creaking_heart_pos] if function mobtamer:sys/func/tame/target/fail/creaking/0 run kill @s
