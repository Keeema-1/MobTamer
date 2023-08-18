
execute store result score $mt.pet.speed mt.score run attribute @s generic.movement_speed get 100
data modify storage mobtamer:temp data.ActiveEffects set from entity @s ActiveEffects
effect clear @s
execute store result score $mt.pet.speed.no_effect mt.score run attribute @s generic.movement_speed get 100
execute store result score $mt.pet.speed.base mt.score run attribute @s generic.movement_speed base get 100
execute store result score $mt.pet.speed.add.variant mt.score run attribute @s generic.movement_speed modifier value get 0-0-0-0-ee
scoreboard players operation $mt.pet.speed.add mt.score = $mt.pet.speed mt.score
scoreboard players operation $mt.pet.speed.add mt.score -= $mt.pet.speed.base mt.score
scoreboard players operation $mt.pet.speed.add.effect mt.score = $mt.pet.speed mt.score
scoreboard players operation $mt.pet.speed.add.effect mt.score -= $mt.pet.speed.no_effect mt.score

data modify entity @s ActiveEffects set from storage mobtamer:temp data.ActiveEffects
data remove storage mobtamer:temp data.ActiveEffects

execute store result storage mobtamer:temp data.pet_status.speed.base int 1 run scoreboard players get $mt.pet.speed.base mt.score
execute store result storage mobtamer:temp data.pet_status.speed.no_effect int 1 run scoreboard players get $mt.pet.speed.no_effect mt.score
execute store result storage mobtamer:temp data.pet_status.speed.add.effect int 1 run scoreboard players get $mt.pet.speed.add.effect mt.score
execute store result storage mobtamer:temp data.pet_status.speed.add.variant int 1 run scoreboard players get $mt.pet.speed.add.variant mt.score
execute store result storage mobtamer:temp data.pet_status.speed.final int 1 run scoreboard players get $mt.pet.speed mt.score

data modify storage mobtamer:temp data.pet_status.power_up_max.speed set value 0
execute if entity @s[type=#mobtamer:power_up/speed] run data modify storage mobtamer:temp data.pet_status.can_power_up.speed set value 1b

scoreboard players reset $mt.pet.speed mt.score
scoreboard players reset $mt.pet.speed.base mt.score
scoreboard players reset $mt.pet.speed.variant mt.score
scoreboard players reset $mt.pet.speed.add mt.score
scoreboard players reset $mt.pet.speed.add.effect mt.score
scoreboard players reset $mt.pet.speed.no_effect mt.score
