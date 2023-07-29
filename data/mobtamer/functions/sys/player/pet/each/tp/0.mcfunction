tag @s add mt.tp_pet

# 足元が危険ブロックのとき
execute if block ~ ~-0.5 ~ #mobtamer:common/dangerous if predicate mobtamer:random/100m run function mobtamer:sys/common/pet/tp/0
# 離れたら
execute if predicate mobtamer:targeting at @s unless entity @a[tag=mt.player_check,distance=..24] if predicate mobtamer:random/100m run function mobtamer:sys/common/pet/tp/0
execute unless predicate mobtamer:targeting at @s unless entity @a[tag=mt.player_check,distance=..12] if predicate mobtamer:random/100m run function mobtamer:sys/common/pet/tp/0

tag @s remove mt.tp_pet