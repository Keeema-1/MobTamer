
execute unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] unless predicate mobtamer:looking_at/player_check if entity @s[tag=!mt.selected] run scoreboard players set $mt.player_select_check mt.score 1

execute if score $mt.player_select_check mt.score matches 1.. run tag @s add mt.selected
execute unless score $mt.player_select_check mt.score matches 1.. run function mobtamer:sys/player/item/conductor/short_sneak/00

scoreboard players reset $mt.player_select_check mt.score