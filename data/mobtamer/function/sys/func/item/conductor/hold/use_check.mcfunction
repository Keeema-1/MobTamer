execute on origin if entity @s[tag=mt.player_check] run scoreboard players set #mt.use_check mt.temp 1
execute if score #mt.use_check mt.temp matches 1.. on origin run function mobtamer:sys/func/item/conductor/use/0
execute if score #mt.use_check mt.temp matches 1.. run kill @s
