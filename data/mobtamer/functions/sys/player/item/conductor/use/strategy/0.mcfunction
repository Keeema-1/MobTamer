execute if predicate mobtamer:is_sneaking run function mobtamer:sys/player/item/conductor/use/strategy/sneaking
execute unless predicate mobtamer:is_sneaking unless score @s mt.strategy matches -1 run function mobtamer:sys/player/item/conductor/use/strategy/not_sneaking
