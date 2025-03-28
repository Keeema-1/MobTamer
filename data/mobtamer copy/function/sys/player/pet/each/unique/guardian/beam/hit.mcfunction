
scoreboard players add @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] mt.hostile_interval 1

scoreboard players set $mt.beam_hit_flag mt.score 1

execute if score @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] mt.hostile_interval matches 80.. run function mobtamer:sys/player/pet/each/unique/guardian/beam/damage
