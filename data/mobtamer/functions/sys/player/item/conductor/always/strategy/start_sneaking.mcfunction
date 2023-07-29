
execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/always/strategy/selected
execute if entity @e[team=!,tag=mt.player_check,tag=mt.pet] unless entity @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/always/strategy/all

scoreboard players operation @s mt.strategy = $mt.strategy mt.score

scoreboard players reset $mt.strategy mt.score