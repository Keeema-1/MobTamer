
execute as @e[team=mt.common,tag=mt.player_check,tag=mt.pet] run data remove entity @s Glowing
tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet] remove mt.selected

execute if predicate mobtamer:looking_at/player_check at @s anchored eyes run function mobtamer:sys/player/item/conductor/short_sneak/looking_check/0

execute as @e[team=mt.common,tag=mt.selected,tag=mt.player_check] run function mobtamer:sys/player/item/conductor/short_sneak/selceted
