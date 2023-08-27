execute if entity @s[type=#mobtamer:can_swim] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/swim
execute if entity @s[type=#mobtamer:ride_speed/very_fast] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/very_fast
execute if entity @s[type=#mobtamer:ride_speed/fast] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/fast
execute if entity @s[type=#mobtamer:ride_speed/slow] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/slow
execute if entity @s[type=#mobtamer:ride_speed/very_slow] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/very_slow
execute unless entity @s[type=#mobtamer:can_swim] unless entity @s[type=#mobtamer:ride_speed/very_fast] unless entity @s[type=#mobtamer:ride_speed/fast] unless entity @s[type=#mobtamer:ride_speed/slow] unless entity @s[type=#mobtamer:ride_speed/very_slow] run function mobtamer:sys/player/item/conductor/always/ride/riding/move/walk/speed/normal
