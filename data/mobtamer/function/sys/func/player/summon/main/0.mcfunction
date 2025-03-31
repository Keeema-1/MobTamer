#> mobtamer:sys/func/player/summon/main/0
#
# ペット召喚後の処理
#
# @within function mobtamer:sys/player/tick

# 召喚用タグ付きのモブがいれば召喚処理
    execute as @e[type=marker,tag=mt.summoned_pet,distance=..8,limit=1] at @s run function mobtamer:sys/func/player/summon/main/00 with entity @s data.mobtamer
