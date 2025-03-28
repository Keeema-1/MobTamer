
execute at @s on origin if entity @s[distance=..28] run function mobtamer:sys/player/pet/each/unique/phantom/attack/check/00

execute unless score $mt.exist_target_record_entity mt.score matches 1.. run kill @s
execute if score $mt.exist_target_record_entity mt.score matches 1.. unless score $mt.attack_flag mt.score matches 1.. if predicate mobtamer:random/10m run kill @s
