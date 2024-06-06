execute if data storage mobtamer:settings data{tame_data:0b} run scoreboard players set $mt.check mt.score 0
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.tame_data set value 0b
execute if score $mt.check mt.score matches 0 run function mobtamer:command/reset/player_tame
scoreboard players reset $mt.check mt.score
