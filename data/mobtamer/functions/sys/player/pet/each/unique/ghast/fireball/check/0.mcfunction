
execute at @s on origin if entity @s[distance=..28] run function mobtamer:sys/player/pet/each/unique/ghast/fireball/check/00

execute unless score $mt.exist_target_record_entity mt.score matches 1.. run kill @s
