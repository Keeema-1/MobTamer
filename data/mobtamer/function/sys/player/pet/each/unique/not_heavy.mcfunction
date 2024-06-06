
execute on passengers if entity @s[type=#mobtamer:weight/heavy] run tellraw @a[tag=mt.player_check] [{"storage": "mobtamer:text","nbt":"data.ride.too_weight","interpret": true}]
execute on passengers if entity @s[type=#mobtamer:weight/heavy] run ride @s dismount
