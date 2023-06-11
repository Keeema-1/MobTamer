execute if entity @e[team=mt.common,tag=mt.player_check,tag=mt.selected,limit=1] run function mobtamer:sys/player/item/conductor/use/ride/1/ride_check
execute unless entity @e[team=mt.common,tag=mt.player_check,tag=mt.selected,limit=1] run function mobtamer:sys/player/item/conductor/use/ride/1/to0
