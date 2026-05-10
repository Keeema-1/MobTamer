
scoreboard players add #mt.distance mt.temp 1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[team=!,tag=mt.player_check,tag=mt.pet,dx=0,dy=0,dz=0,limit=1] run function mobtamer:sys/func/item/conductor/short_sneak/looking_check/success
execute unless score #mt.looking_check mt.temp matches 1.. unless score #mt.distance mt.temp matches 6.. positioned ^ ^ ^1 run function mobtamer:sys/func/item/conductor/short_sneak/looking_check/loop
