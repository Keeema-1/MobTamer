execute positioned ~ ~-1 ~ if block ~ ~ ~ #mobtamer:space unless block ~ ~-1 ~ #mobtamer:space unless block ~ ~-1 ~ #mobtamer:cannot_tp_on run function mobtamer:sys/player/pet/each/tp/space/00
execute unless score $mt.tp_flag mt.score matches 1.. positioned ~ ~ ~ if block ~ ~ ~ #mobtamer:space unless block ~ ~-1 ~ #mobtamer:space unless block ~ ~-1 ~ #mobtamer:cannot_tp_on run function mobtamer:sys/player/pet/each/tp/space/00
execute unless score $mt.tp_flag mt.score matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ #mobtamer:space unless block ~ ~-1 ~ #mobtamer:space unless block ~ ~-1 ~ #mobtamer:cannot_tp_on run function mobtamer:sys/player/pet/each/tp/space/00
scoreboard players reset $mt.tp_flag mt.score
