
execute if entity @s[type=#mobtamer:change_to_drowned] if predicate mobtamer:location_water if predicate mobtamer:random/100m run data modify entity @s InWaterTime set value -1

execute if entity @s[type=skeleton] if block ~ ~0.5 ~ powder_snow if predicate mobtamer:random/100m run data modify entity @s StrayConversionTime set value -1

execute if entity @s[type=#mobtamer:breathe_underwater] unless predicate mobtamer:location_water if predicate mobtamer:random/100m run data modify entity @s Air set value 1000s

execute if entity @s[type=bee] if entity @s[nbt={HasStung:1b}] run data merge entity @s {HasStung:0b,TicksSincePollination:0}
