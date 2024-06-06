
execute if block ~ ~0.5 ~ powder_snow run data modify entity @s StrayConversionTime set value -1
execute if block ~ ~1.5 ~ powder_snow run data modify entity @s StrayConversionTime set value -1

# execute if predicate mobtamer:random/50m if data entity @s HandItems[{id:"minecraft:tipped_arrow"}] run data modify entity @s HandItems[1].Count set value 64b
