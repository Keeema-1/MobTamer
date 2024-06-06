execute on origin if entity @s[tag=mt.player_check] run scoreboard players set $mt.use_check mt.score 1
execute if score $mt.use_check mt.score matches 1.. on origin run function mobtamer:sys/player/item/conductor/use/0
execute if score $mt.use_check mt.score matches 1.. run kill @s
