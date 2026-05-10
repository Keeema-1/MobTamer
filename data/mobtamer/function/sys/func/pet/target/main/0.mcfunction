
execute if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute unless score @s mt.hostile_interval matches 1.. if predicate mobtamer:random/500m unless entity @s[tag=mt.targeting] run function mobtamer:sys/func/pet/target/main/00
