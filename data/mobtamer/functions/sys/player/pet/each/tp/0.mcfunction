tag @s add mt.tp_pet

# 足元が危険ブロックのとき
execute if entity @s[type=!#mobtamer:fire_resistance] if block ~ ~-0.5 ~ #mobtamer:common/dangerous if predicate mobtamer:random/100m run function mobtamer:sys/common/pet/tp/0
execute if entity @s[type=#mobtamer:fire_resistance] if block ~ ~-0.5 ~ #mobtamer:common/dangerous_fire_resistance if predicate mobtamer:random/100m run function mobtamer:sys/common/pet/tp/0
# 離れたら
execute if entity @s[type=!ghast] if entity @s[tag=mt.targeting] at @s unless entity @a[tag=mt.player_check,distance=..24] if predicate mobtamer:random/100m run function mobtamer:sys/common/pet/tp/0
execute if entity @s[type=!ghast] unless entity @s[tag=mt.targeting] at @s unless entity @a[tag=mt.player_check,distance=..12] if predicate mobtamer:random/100m run function mobtamer:sys/common/pet/tp/0

execute if entity @s[type=ghast] at @s unless entity @a[tag=mt.player_check,distance=..24] if predicate mobtamer:random/100m run function mobtamer:sys/common/pet/tp/0

tag @s remove mt.tp_pet