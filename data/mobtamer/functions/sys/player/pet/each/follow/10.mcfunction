execute if block ~ ~-2 ~ #mobtamer:space if block ~ ~-1 ~ #mobtamer:space if block ~ ~ ~ #mobtamer:space run scoreboard players set $mt.cannot_follow mt.score 1
execute unless score $mt.cannot_follow mt.score matches 1 run function mobtamer:sys/player/pet/each/follow/100
scoreboard players reset $mt.cannot_follow mt.score