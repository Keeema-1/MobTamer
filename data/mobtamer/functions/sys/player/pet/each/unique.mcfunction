
execute if entity @s[type=#mobtamer:change_to_drowned] if predicate mobtamer:location_water if predicate mobtamer:random/100m run data modify entity @s InWaterTime set value -1

execute if entity @s[type=skeleton] if block ~ ~0.5 ~ powder_snow if predicate mobtamer:random/100m run data modify entity @s StrayConversionTime set value -1
