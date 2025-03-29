#> mobtamer:sys/player/summon/0
#
# 召喚後の処理
#
# @within function mobtamer:sys/player/tick

# 召喚用タグ付きのモブがいれば召喚処理
    # execute as @e[type=#mobtamer:can_tame,tag=mt.summoned_pet,distance=..8,limit=1] run function mobtamer:sys/player/summon/00
    execute as @e[type=marker,tag=mt.summoned_pet,distance=..8,limit=1] at @s run function mobtamer:sys/player/summon/00 with entity @s data.mobtamer
