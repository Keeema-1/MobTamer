
execute if entity @s[type=#mobtamer:can_fly] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/fly/0

execute if entity @s[type=#mobtamer:can_swim] if predicate mobtamer:location_water run function mobtamer:sys/player/item/conductor/always/ride/riding/move/swim/0

execute unless entity @s[type=#mobtamer:can_fly] unless entity @s[type=#mobtamer:can_swim] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/0
execute if entity @s[type=#mobtamer:can_swim] unless predicate mobtamer:location_water run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/0

execute if data entity @s {Sitting:1b} run data modify entity @s Sitting set value 0b
