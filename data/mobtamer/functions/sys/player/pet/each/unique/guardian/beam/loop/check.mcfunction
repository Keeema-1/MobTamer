
# execute if predicate mobtamer:random/200m run particle bubble ^ ^ ^ 0.01 0.01 0.01 0 1
# execute if predicate mobtamer:random/200m run particle bubble ^ ^ ^0.5 0.01 0.01 0.01 0 1

execute positioned ~-1 ~-1 ~-1 if entity @e[team=!,tag=mt.pet_check,tag=mt.pet,dx=1,dy=1,dz=1,limit=1] run function mobtamer:sys/player/pet/each/unique/guardian/beam/hit

execute unless score $mt.beam_hit_flag mt.score matches 1 positioned ^ ^ ^1 if block ^ ^ ^ #mobtamer:space_and_water if entity @s[distance=..10] run function mobtamer:sys/player/pet/each/unique/guardian/beam/loop/check
