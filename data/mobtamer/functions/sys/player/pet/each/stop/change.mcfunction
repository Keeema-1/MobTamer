scoreboard players set $mt.stop_check mt.score 1
execute if entity @s[tag=mt.stop] run function mobtamer:sys/player/pet/each/stop/off
execute unless score $mt.stop_check mt.score matches 2 run function mobtamer:sys/player/pet/each/stop/on
scoreboard players reset $mt.stop_check mt.score
