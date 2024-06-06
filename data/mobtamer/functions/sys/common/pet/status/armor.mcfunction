
execute store result score $mt.pet.armor mt.score run attribute @s generic.armor get 1
data modify storage mobtamer:temp data.active_effects set from entity @s active_effects
effect clear @s
execute store result score $mt.pet.armor.no_effect mt.score run attribute @s generic.armor get 1
execute store result score $mt.pet.armor.base mt.score run attribute @s generic.armor base get 1
execute store result score $mt.pet.armor.add.variant mt.score run attribute @s generic.armor modifier value get 0-0-0-0-a0
scoreboard players operation $mt.pet.armor.add mt.score = $mt.pet.armor mt.score
scoreboard players operation $mt.pet.armor.add mt.score -= $mt.pet.armor.base mt.score
scoreboard players operation $mt.pet.armor.add.weapon mt.score = $mt.pet.armor.no_effect mt.score
scoreboard players operation $mt.pet.armor.add.weapon mt.score -= $mt.pet.armor.base mt.score
scoreboard players operation $mt.pet.armor.add.weapon mt.score -= $mt.pet.armor.add.variant mt.score
scoreboard players operation $mt.pet.armor.add.effect mt.score = $mt.pet.armor mt.score
scoreboard players operation $mt.pet.armor.add.effect mt.score -= $mt.pet.armor.no_effect mt.score

data modify entity @s active_effects set from storage mobtamer:temp data.active_effects
data remove storage mobtamer:temp data.active_effects

execute store result storage mobtamer:temp data.pet_status.armor.base int 1 run scoreboard players get $mt.pet.armor.base mt.score
execute store result storage mobtamer:temp data.pet_status.armor.no_effect int 1 run scoreboard players get $mt.pet.armor.no_effect mt.score
execute store result storage mobtamer:temp data.pet_status.armor.add.weapon int 1 run scoreboard players get $mt.pet.armor.add.weapon mt.score
execute store result storage mobtamer:temp data.pet_status.armor.add.effect int 1 run scoreboard players get $mt.pet.armor.add.effect mt.score
execute store result storage mobtamer:temp data.pet_status.armor.add.variant int 1 run scoreboard players get $mt.pet.armor.add.variant mt.score
execute store result storage mobtamer:temp data.pet_status.armor.final int 1 run scoreboard players get $mt.pet.armor mt.score

data modify storage mobtamer:temp data.pet_status.power_up_max.armor set value 0
execute if entity @s[type=#mobtamer:power_up/armor] run data modify storage mobtamer:temp data.pet_status.can_power_up.armor set value 1b

scoreboard players reset $mt.pet.armor mt.score
scoreboard players reset $mt.pet.armor.base mt.score
scoreboard players reset $mt.pet.armor.variant mt.score
scoreboard players reset $mt.pet.armor.add mt.score
scoreboard players reset $mt.pet.armor.add.weapon mt.score
scoreboard players reset $mt.pet.armor.add.effect mt.score
scoreboard players reset $mt.pet.armor.no_effect mt.score
