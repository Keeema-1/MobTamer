
execute if entity @s[type=#mobtamer:can_fly] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/fly/0
execute if entity @s[type=!#mobtamer:can_fly] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/0
