
scoreboard players add #mt.distance mt.temp 1
execute positioned ~-1 ~-1 ~-1 as @e[type=#mobtamer:all_mobs,tag=!mt.same_team,dx=1,dy=1,dz=1,limit=1] run function mobtamer:sys/func/item/conductor/use/attack/looking_check/success
execute unless score #mt.looking_check mt.temp matches 1.. unless score #mt.distance mt.temp matches 6.. positioned ^ ^ ^1.5 if block ~ ~ ~ #mobtamer:space run function mobtamer:sys/func/item/conductor/use/attack/looking_check/loop
