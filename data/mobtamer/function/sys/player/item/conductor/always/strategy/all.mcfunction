
scoreboard players operation $mt.strategy mt.score = @e[team=!,tag=mt.player_check,tag=mt.pet,limit=1] mt.strategy
execute if score $mt.strategy mt.score matches 0 as @e[team=!,tag=mt.player_check,tag=mt.pet] if score @s mt.strategy matches 1.. run scoreboard players set $mt.strategy mt.score 0
execute if score $mt.strategy mt.score matches 1.. as @e[team=!,tag=mt.player_check,tag=mt.pet] unless score @s mt.strategy = $mt.strategy mt.score run scoreboard players set $mt.strategy mt.score 0
