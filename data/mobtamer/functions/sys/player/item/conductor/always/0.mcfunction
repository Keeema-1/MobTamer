
execute if score $mt.conductor.mode1 mt.score matches 2 unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] if predicate mobtamer:random/500m run function mobtamer:sys/player/item/conductor/always/1

execute if score $mt.conductor.mode1 mt.score matches 4 run function mobtamer:sys/player/item/conductor/always/ride/0
