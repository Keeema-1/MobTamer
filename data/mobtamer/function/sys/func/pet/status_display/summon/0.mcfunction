#> mobtamer:sys/func/player/status_display/summon/0
#
# ステータスディスプレイを召喚する
#
# @within function mobtamer:sys/player/pet/each/alive

execute if entity @s[tag=mt.display_exist] run return run tag @s remove mt.display_exist

execute if score @s mt.health < @s mt.max_health anchored eyes rotated ~ 0 run function mobtamer:sys/func/pet/status_display/summon/00
execute if entity @s[tag=mt.display_exist] run return 1
execute if entity @s[tag=mt.stop] anchored eyes rotated ~ 0 run function mobtamer:sys/func/pet/status_display/summon/00
execute if entity @s[tag=mt.display_exist] run return 1
execute if entity @s[tag=mt.targeting] anchored eyes rotated ~ 0 run function mobtamer:sys/func/pet/status_display/summon/00
