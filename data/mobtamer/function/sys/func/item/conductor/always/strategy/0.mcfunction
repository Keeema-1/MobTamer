execute if score @s mt.sneak_time matches 9 if score @s mt.strategy matches -1 run function mobtamer:sys/func/item/conductor/always/strategy/start_sneaking
execute if score @s mt.sneak_time matches 9.. unless predicate mobtamer:is_sneaking run function mobtamer:sys/func/item/conductor/always/strategy/finish_sneaking
