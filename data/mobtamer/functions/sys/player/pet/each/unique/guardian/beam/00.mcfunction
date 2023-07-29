
scoreboard players set $mt.exist_target_record_entity mt.score 1

# execute unless block ~ ~ ~ water run return 1
execute unless data entity @s {HurtTime:0s} run return 1

execute if entity @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] anchored eyes at @s facing entity @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] eyes positioned ^ ^ ^1 run function mobtamer:sys/player/pet/each/unique/guardian/beam/loop/check

execute if score $mt.beam_hit_flag mt.score matches 1 anchored eyes at @s facing entity @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] eyes positioned ^ ^ ^0.5 run function mobtamer:sys/player/pet/each/unique/guardian/beam/loop/particle

execute unless score $mt.beam_hit_flag mt.score matches 1 run scoreboard players set @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] mt.hostile_interval 0

execute if score $mt.beam_hit_flag mt.score matches 1 if block ~ ~ ~ water positioned as @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] facing entity @s eyes run tp @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] ~ ~ ~ ~ ~
