
advancement grant @a[distance=..16] only mobtamer:mobtamer/first_tame
advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/tame_type

execute if entity @s[type=#mobtamer:pet_type/overworld] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld
execute if entity @s[type=#mobtamer:pet_type/overworld/animal] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld/animal
execute if entity @s[type=#mobtamer:pet_type/overworld/animal/terrestrial] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld/animal/terrestrial
execute if entity @s[type=#mobtamer:pet_type/overworld/animal/aquatic] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld/animal/aquatic
execute if entity @s[type=#mobtamer:pet_type/overworld/human] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld/human
execute if entity @s[type=#mobtamer:pet_type/overworld/monster] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld/monster
execute if entity @s[type=#mobtamer:pet_type/overworld/monster/aquatic] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld/monster/aquatic
execute if entity @s[type=#mobtamer:pet_type/overworld/monster/terrestrial] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld/monster/terrestrial
execute if entity @s[type=#mobtamer:pet_type/overworld/monster/terrestrial/raider] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/overworld/monster/terrestrial/raider
execute if entity @s[type=#mobtamer:pet_type/nether] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/nether
execute if entity @s[type=#mobtamer:pet_type/other] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/other
execute if entity @s[type=#mobtamer:pet_type/end] run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/type/end

execute if entity @s[type=#mobtamer:pet_type/overworld/animal/terrestrial] run function mobtamer:sys/tame/success/advancement/overworld/animal/terrestrial
execute if entity @s[type=#mobtamer:pet_type/overworld/animal/aquatic] run function mobtamer:sys/tame/success/advancement/overworld/animal/aquatic
execute if entity @s[type=#mobtamer:pet_type/overworld/human] run function mobtamer:sys/tame/success/advancement/human
execute if entity @s[type=#mobtamer:pet_type/overworld/monster/terrestrial] run function mobtamer:sys/tame/success/advancement/overworld/monster/terrestrial
execute if entity @s[type=#mobtamer:pet_type/overworld/monster/aquatic] run function mobtamer:sys/tame/success/advancement/overworld/monster/aquatic
execute if entity @s[type=#mobtamer:pet_type/nether] run function mobtamer:sys/tame/success/advancement/nether
execute if entity @s[type=#mobtamer:pet_type/end] run function mobtamer:sys/tame/success/advancement/end
execute if entity @s[type=#mobtamer:pet_type/other] run function mobtamer:sys/tame/success/advancement/other

execute if entity @s[type=mooshroom] if data entity @s {Type:"brown"} run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/unique/brown_mooshroom
execute if entity @s[type=axolotl] if data entity @s {Variant:4} run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/unique/blue_axolotl

execute if entity @s[type=creeper,tag=!mt.gacha.powered_creeper] if data entity @s {powered:1b} run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/unique/powered_creeper
tag @s remove mt.gacha.powered_creeper

execute if data entity @s {ArmorItems:[{id:"minecraft:diamond_boots"},{id:"minecraft:diamond_leggings"},{id:"minecraft:diamond_chestplate"},{id:"minecraft:diamond_helmet"}]} run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/unique/full_diamond
execute if data entity @s {ArmorItems:[{id:"minecraft:golden_boots"},{id:"minecraft:golden_leggings"},{id:"minecraft:golden_chestplate"},{id:"minecraft:golden_helmet"}]} run advancement grant @a[distance=..16] only mobtamer:mobtamer/tame/unique/full_golden

execute as @a[distance=..16] if score @s mt.tame_type_count matches 10.. run advancement grant @s only mobtamer:mobtamer/tame/count/10types
execute as @a[distance=..16] if score @s mt.tame_type_count matches 20.. run advancement grant @s only mobtamer:mobtamer/tame/count/20types
execute as @a[distance=..16] if score @s mt.tame_type_count matches 30.. run advancement grant @s only mobtamer:mobtamer/tame/count/30types
execute as @a[distance=..16] if score @s mt.tame_type_count matches 40.. run advancement grant @s only mobtamer:mobtamer/tame/count/40types
execute as @a[distance=..16] if score @s mt.tame_type_count matches 50.. run advancement grant @s only mobtamer:mobtamer/tame/count/50types
execute as @a[distance=..16] if score @s mt.tame_type_count matches 60.. run advancement grant @s only mobtamer:mobtamer/tame/count/60types
execute as @a[distance=..16] if score @s mt.tame_type_count matches 70.. run advancement grant @s only mobtamer:mobtamer/tame/count/70types
execute as @a[distance=..16] if score @s mt.tame_type_count matches 74.. run advancement grant @s only mobtamer:mobtamer/tame/count/74types

advancement grant @a[distance=..16] only mobtamer:mobtamer/challenge