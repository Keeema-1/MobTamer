
execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/always/strategy/selected
execute if entity @e[team=!,tag=mt.player_check,tag=mt.pet] unless entity @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/always/strategy/finish_sneaking_all

execute if score @s mt.strategy = $mt.strategy mt.score run scoreboard players set @s mt.strategy -1

scoreboard players reset $mt.strategy mt.score