
execute on origin if entity @s[tag=mt.player_check] run scoreboard players set #mt.apple_check mt.temp 1
execute if score #mt.apple_check mt.temp matches 1.. run function mobtamer:sys/func/tame/golden_apple/drop/000

scoreboard players reset #mt.apple_check mt.temp
