#> mobtamer:sys/player/summon/00
#
# 召喚後の処理
#
# @within function mobtamer:sys/player/summon/0

data modify storage mobtamer:temp data.summoned_pet set from entity @s data.mobtamer
$execute summon $(entity_id) run function mobtamer:sys/player/summon/000
data remove storage mobtamer:temp data.summoned_pet

kill @s