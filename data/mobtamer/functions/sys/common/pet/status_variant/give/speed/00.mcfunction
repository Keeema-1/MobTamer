
execute if predicate mobtamer:random/200m run scoreboard players set $mt.random mt.score 1
execute if predicate mobtamer:random/200m run scoreboard players add $mt.random mt.score 1
execute if predicate mobtamer:random/200m run scoreboard players add $mt.random mt.score 1

execute unless score $mt.random mt.score matches 1 run attribute @s generic.movement_speed modifier add 0-0-0-0-ee "mt.movement_speed.add" 0.01 add
execute if score $mt.random mt.score matches 1 run attribute @s generic.movement_speed modifier add 0-0-0-0-ee "mt.movement_speed.add" 0.02 add
execute if score $mt.random mt.score matches 2 run attribute @s generic.movement_speed modifier add 0-0-0-0-ee "mt.movement_speed.add" 0.03 add
execute if score $mt.random mt.score matches 3 run attribute @s generic.movement_speed modifier add 0-0-0-0-ee "mt.movement_speed.add" 0.04 add

scoreboard players reset $mt.random mt.score