
execute positioned ~-1 ~-1 ~-1 as @e[team=!,tag=mt.pet_check,tag=mt.pet,dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 run function mobtamer:sys/player/pet/each/unique/phantom/attack/0

execute unless score $mt.attack_flag mt.score matches 1 positioned ^ ^ ^1 if block ^ ^ ^ #mobtamer:space_and_water if entity @s[distance=..20] run function mobtamer:sys/player/pet/each/unique/phantom/attack/check/loop
