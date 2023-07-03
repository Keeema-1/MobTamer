
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
execute if entity @s[type=#mobtamer:pet_type/overworld/human] run function mobtamer:sys/tame/success/advancement/overworld/human
execute if entity @s[type=#mobtamer:pet_type/overworld/monster/terrestrial] run function mobtamer:sys/tame/success/advancement/overworld/monster/terrestrial
execute if entity @s[type=#mobtamer:pet_type/overworld/monster/aquatic] run function mobtamer:sys/tame/success/advancement/overworld/monster/aquatic
execute if entity @s[type=#mobtamer:pet_type/nether] run function mobtamer:sys/tame/success/advancement/nether
execute if entity @s[type=#mobtamer:pet_type/end] run function mobtamer:sys/tame/success/advancement/end
execute if entity @s[type=#mobtamer:pet_type/other] run function mobtamer:sys/tame/success/advancement/other
