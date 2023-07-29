
execute if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute unless score @s mt.hostile_interval matches 1.. if predicate mobtamer:random/500m unless predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/guardian/beam/start/00
