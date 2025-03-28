
execute if entity @s[type=#mobtamer:can_fly] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/fly/0
execute if entity @s[type=#mobtamer:can_fly] run return 1

execute if entity @s[type=#mobtamer:can_swim] if predicate mobtamer:location_water run function mobtamer:sys/player/item/conductor/always/ride/riding/move/swim/0
execute if entity @s[type=#mobtamer:can_swim] if predicate mobtamer:location_water run return 1
# execute if entity @s[type=#mobtamer:can_swim] if block ~ ~-1 ~ water run function mobtamer:sys/player/item/conductor/always/ride/riding/move/swim/0
# execute if entity @s[type=#mobtamer:can_swim] if block ~ ~-1 ~ water run return 1

execute if entity @s[type=#mobtamer:slimes] run return 1

function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/0

execute if data entity @s {Sitting:1b} run data modify entity @s Sitting set value 0b

# execute if predicate mobtamer:is_swiming run title @a actionbar "a"