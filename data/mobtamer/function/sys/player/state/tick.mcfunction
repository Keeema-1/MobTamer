
execute unless predicate mobtamer:is_sneaking run scoreboard players reset @s mt.sneak_time

execute if predicate mobtamer:random/50m run function mobtamer:sys/player/state/flying_check
