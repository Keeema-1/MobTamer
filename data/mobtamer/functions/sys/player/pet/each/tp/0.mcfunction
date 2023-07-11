tag @s add mt.tp_pet

# 足元が危険ブロックのとき
execute if block ~ ~-0.5 ~ #mobtamer:common/dangerous if predicate mobtamer:random/100m at @a[tag=mt.player_check,limit=1] at @s run function mobtamer:sys/common/pet/tp/0
# 離れたら
execute at @s unless entity @a[distance=..12] if predicate mobtamer:random/100m as @a[tag=mt.player_check,limit=1] at @s run function mobtamer:sys/common/pet/tp/0

tag @s remove mt.tp_pet