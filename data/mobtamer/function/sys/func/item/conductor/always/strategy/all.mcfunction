
scoreboard players operation #mt.strategy mt.temp = @e[team=!,tag=mt.player_check,tag=mt.pet,limit=1] mt.strategy
execute if score #mt.strategy mt.temp matches 0 as @e[team=!,tag=mt.player_check,tag=mt.pet] if score @s mt.strategy matches 1.. run scoreboard players set #mt.strategy mt.temp 0
execute if score #mt.strategy mt.temp matches 1.. as @e[team=!,tag=mt.player_check,tag=mt.pet] unless score @s mt.strategy = #mt.strategy mt.temp run scoreboard players set #mt.strategy mt.temp 0
