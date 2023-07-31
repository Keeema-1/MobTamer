
scoreboard players set $mt.exist_target_record_entity mt.score 1

execute unless data entity @s {HurtTime:0s} run return 1

execute if entity @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..20,limit=1] anchored eyes at @s facing entity @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..20,limit=1] eyes positioned ^ ^ ^1 run function mobtamer:sys/player/pet/each/unique/phantom/attack/check/loop
