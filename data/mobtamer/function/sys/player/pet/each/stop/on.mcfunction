tag @s add mt.stop
data modify entity @s NoAI set value 1b
execute if score $mt.stop_check mt.score matches 1 run scoreboard players set $mt.stop_check mt.score 2