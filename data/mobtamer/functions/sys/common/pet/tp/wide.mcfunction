
execute if block ~-1 ~ ~-1 #mobtamer:space if block ~-1 ~ ~ #mobtamer:space if block ~-1 ~ ~1 #mobtamer:space if block ~ ~ ~-1 #mobtamer:space if block ~ ~ ~ #mobtamer:space if block ~ ~ ~1 #mobtamer:space if block ~1 ~ ~-1 #mobtamer:space if block ~1 ~ ~ #mobtamer:space if block ~1 ~ ~1 #mobtamer:space if block ~-1 ~1 ~-1 #mobtamer:space if block ~-1 ~1 ~ #mobtamer:space if block ~-1 ~1 ~1 #mobtamer:space if block ~ ~1 ~-1 #mobtamer:space if block ~ ~1 ~ #mobtamer:space if block ~ ~1 ~1 #mobtamer:space if block ~1 ~1 ~-1 #mobtamer:space if block ~1 ~1 ~ #mobtamer:space if block ~1 ~1 ~1 #mobtamer:space run scoreboard players set $mt.tp_reset.return mt.score 1

execute unless score $mt.tp_reset.return mt.score matches 1 run data modify entity @s Pos set from storage mobtamer:temp data.pet.Pos

scoreboard players reset $mt.tp_reset.return mt.score