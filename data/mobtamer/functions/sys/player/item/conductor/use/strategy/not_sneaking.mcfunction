
execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run scoreboard players operation @s mt.strategy = @a[tag=mt.player_check,limit=1] mt.strategy
execute if entity @e[team=!,tag=mt.player_check,tag=mt.pet,limit=1] unless entity @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] run scoreboard players operation @e[team=!,tag=mt.player_check,tag=mt.pet] mt.strategy = @a[tag=mt.player_check,limit=1] mt.strategy

scoreboard players set @s mt.strategy -1
