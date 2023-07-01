
execute store result score $mt.pet.attack mt.score run attribute @s generic.attack_damage get 1
data modify storage mobtamer:temp data.ActiveEffects set from entity @s ActiveEffects
effect clear @s
execute store result score $mt.pet.attack.no_effect mt.score run attribute @s generic.attack_damage get 1
execute store result score $mt.pet.attack.base mt.score run attribute @s generic.attack_damage base get 1
scoreboard players operation $mt.pet.attack.add mt.score = $mt.pet.attack mt.score
scoreboard players operation $mt.pet.attack.add mt.score -= $mt.pet.attack.base mt.score
scoreboard players operation $mt.pet.attack.add.weapon mt.score = $mt.pet.attack.no_effect mt.score
scoreboard players operation $mt.pet.attack.add.weapon mt.score -= $mt.pet.attack.base mt.score
scoreboard players operation $mt.pet.attack.add.effect mt.score = $mt.pet.attack mt.score
scoreboard players operation $mt.pet.attack.add.effect mt.score -= $mt.pet.attack.no_effect mt.score

data modify entity @s ActiveEffects set from storage mobtamer:temp data.ActiveEffects
data remove storage mobtamer:temp data.ActiveEffects


execute store result storage mobtamer:temp data.pet_status.attack.base int 1 run scoreboard players get $mt.pet.attack.base mt.score
execute store result storage mobtamer:temp data.pet_status.attack.no_effect int 1 run scoreboard players get $mt.pet.attack.no_effect mt.score
execute store result storage mobtamer:temp data.pet_status.attack.add.weapon int 1 run scoreboard players get $mt.pet.attack.add.weapon mt.score
execute store result storage mobtamer:temp data.pet_status.attack.add.effect int 1 run scoreboard players get $mt.pet.attack.add.effect mt.score
execute store result storage mobtamer:temp data.pet_status.attack.final int 1 run scoreboard players get $mt.pet.attack mt.score

data modify storage mobtamer:temp data.pet_status.power_up_max.attack set value 0
execute if entity @s[type=#mobtamer:power_up/attack] run data modify storage mobtamer:temp data.pet_status.can_power_up.attack set value 1b

scoreboard players reset $mt.pet.attack mt.score
scoreboard players reset $mt.pet.attack.base mt.score
scoreboard players reset $mt.pet.attack.add mt.score
scoreboard players reset $mt.pet.attack.add.weapon mt.score
scoreboard players reset $mt.pet.attack.add.effect mt.score
scoreboard players reset $mt.pet.attack.no_effect mt.score
