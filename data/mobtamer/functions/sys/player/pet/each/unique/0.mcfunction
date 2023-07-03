
execute if entity @s[type=#mobtamer:change_to_drowned] if predicate mobtamer:location_water if predicate mobtamer:random/100m run data modify entity @s InWaterTime set value -1

execute if entity @s[type=skeleton] if predicate mobtamer:random/100m run function mobtamer:sys/player/pet/each/unique/skeleton

execute if entity @s[type=#mobtamer:breathe_underwater] unless predicate mobtamer:location_water if predicate mobtamer:random/100m run data modify entity @s Air set value 1000s

execute if entity @s[type=bee] if entity @s[nbt={HasStung:1b}] run data merge entity @s {HasStung:0b,TicksSincePollination:0}

execute if entity @s[type=fox,tag=mt.following] run function mobtamer:sys/player/pet/each/unique/fox

execute if entity @s[type=wolf,tag=mt.following] if data entity @s {Sitting:1b} run data modify entity @s Sitting set value 0b

execute if predicate mobtamer:random/1m if data storage mobtamer:settings data{baby_grow:0b} if predicate mobtamer:is_baby run data modify entity @s Age set value -100000

execute if entity @s[type=goat] if predicate mobtamer:random/50m run data modify entity @s Brain.memories."minecraft:ram_cooldown_ticks" set value 0

execute if entity @s[type=evoker] if predicate mobtamer:targeting_not_common_team run team join mt.common @e[type=vex,team=!mt.common,distance=..4]

execute if predicate mobtamer:random/50m on passengers on vehicle if entity @s[tag=mt.pet_check] if data entity @s {CustomNameVisible:1b} run data modify entity @s CustomNameVisible set value 0b
execute if predicate mobtamer:random/50m unless predicate mobtamer:passenger_exists unless data entity @s {CustomNameVisible:1b} run data modify entity @s CustomNameVisible set value 1b
