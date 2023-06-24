execute if entity @s[type=#mobtamer:can_swim] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/swim
execute if entity @s[type=#mobtamer:can_swim] run return 1
execute if entity @s[type=#mobtamer:ride_speed/very_fast] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/very_fast
execute if entity @s[type=#mobtamer:ride_speed/very_fast] run return 1
execute if entity @s[type=#mobtamer:ride_speed/fast] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/fast
execute if entity @s[type=#mobtamer:ride_speed/fast] run return 1
execute if entity @s[type=#mobtamer:ride_speed/slow] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/slow
execute if entity @s[type=#mobtamer:ride_speed/slow] run return 1
function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/normal
