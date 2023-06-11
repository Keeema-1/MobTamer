execute if entity @e[team=mt.common,tag=mt.player_check,tag=mt.selected,predicate=!mobtamer:vehicle/any,limit=1] run function mobtamer:sys/player/item/conductor/use/ride/0/to1
execute if entity @e[team=mt.common,tag=mt.player_check,tag=mt.selected,predicate=mobtamer:vehicle/any,limit=1] run function mobtamer:sys/player/item/conductor/use/ride/0/dismount
