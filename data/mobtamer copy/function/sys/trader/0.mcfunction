execute as @e[type=wandering_trader,tag=mt.trader,distance=..8] run function mobtamer:sys/trader/01
execute as @e[type=wandering_trader,tag=!mt.trader,distance=..8] run function mobtamer:sys/trader/00

execute if predicate mobtamer:random/100m as @e[type=wandering_trader,tag=mt.trader,distance=..16] run function mobtamer:sys/trader/update/0
