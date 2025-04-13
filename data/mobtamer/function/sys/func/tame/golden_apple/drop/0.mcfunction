#> mobtamer:sys/func/take/golden_apple/drop/0
#
# 金のリンゴを投げたとき
#
# @within function mobtamer:sys/player/item/tick

execute anchored eyes positioned ^ ^ ^ as @e[type=item,tag=!mt.golden_apple,nbt={Item:{id:"minecraft:golden_apple"}},distance=..2] run function mobtamer:sys/func/tame/golden_apple/drop/00

scoreboard players reset @s mt.dropped.golden_apple
