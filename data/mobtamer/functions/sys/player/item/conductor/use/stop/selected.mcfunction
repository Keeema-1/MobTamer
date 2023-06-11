execute if entity @s[tag=mt.stop] run scoreboard players set $mt.stop.on mt.score 1
execute if score $mt.stop.on mt.score matches 1.. run function mobtamer:sys/player/pet/each/stop/off
execute unless score $mt.stop.on mt.score matches 1.. run function mobtamer:sys/player/pet/each/stop/on
scoreboard players reset $mt.stop.on mt.score
