execute at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ facing entity @p
execute if data storage mobtamer:settings data.release_progress.pet_equipment unless data storage mobtamer:settings data.release_progress{pet_equipment:0} run advancement grant @a[distance=..8] only mobtamer:mobtamer/caution/pet_equipment
