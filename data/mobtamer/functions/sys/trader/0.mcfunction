execute as @e[type=wandering_trader,tag=mt.trader,distance=..8] at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ facing entity @p
execute as @e[type=wandering_trader,tag=!mt.trader,tag=!mt.edit_check,distance=..8] run function mobtamer:sys/trader/00

execute as @e[type=wandering_trader,tag=mt.trader,distance=..16] if predicate mobtamer:random/100m run function mobtamer:sys/trader/update/0

execute if predicate mobtamer:trade_update_time run function mobtamer:sys/trader/daily_change/0