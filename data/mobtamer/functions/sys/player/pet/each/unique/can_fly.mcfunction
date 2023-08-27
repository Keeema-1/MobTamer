
execute if entity @s[type=#mobtamer:fly_power_weak] if predicate mobtamer:passenger_exists on passengers if entity @s[type=!#mobtamer:weight/light] on vehicle if entity @s[tag=mt.pet_check] run data modify entity @s Motion[1] set value -0.05d
execute if entity @s[type=#mobtamer:fly_power_weak] if predicate mobtamer:passenger_exists on passengers if entity @s[type=#mobtamer:weight/heavy] on vehicle if entity @s[tag=mt.pet_check] run data modify entity @s Motion[1] set value -0.15d
execute if entity @s[type=!#mobtamer:fly_power_weak] if predicate mobtamer:passenger_exists on passengers if entity @s[type=#mobtamer:weight/heavy] on vehicle if entity @s[tag=mt.pet_check] run data modify entity @s Motion[1] set value -0.05d

execute unless predicate mobtamer:vehicle/any on passengers on passengers if entity @s[type=!#mobtamer:weight/light] run tellraw @a[tag=mt.player_check] [{"storage": "mobtamer:text","nbt":"data.ride.too_weight","interpret": true}]
execute unless predicate mobtamer:vehicle/any on passengers on passengers if entity @s[type=!#mobtamer:weight/light] run ride @s dismount
