
execute store result score $mt.pet.attack mt.score run attribute @s generic.attack_damage get 1

scoreboard players set $mt.pet.attack.enchant mt.score 0
execute if data entity @s HandItems[0].components.enchantments[{id:"minecraft:sharpness",lvl:1s}] run scoreboard players set $mt.pet.attack.enchant mt.score 1
execute if data entity @s HandItems[0].components.enchantments[{id:"minecraft:sharpness",lvl:2s}] run scoreboard players set $mt.pet.attack.enchant mt.score 1
execute if data entity @s HandItems[0].components.enchantments[{id:"minecraft:sharpness",lvl:3s}] run scoreboard players set $mt.pet.attack.enchant mt.score 2
execute if data entity @s HandItems[0].components.enchantments[{id:"minecraft:sharpness",lvl:4s}] run scoreboard players set $mt.pet.attack.enchant mt.score 2
execute if data entity @s HandItems[0].components.enchantments[{id:"minecraft:sharpness",lvl:5s}] run scoreboard players set $mt.pet.attack.enchant mt.score 3
execute if data entity @s HandItems[0].components.enchantments[{id:"minecraft:sharpness",lvl:6s}] run scoreboard players set $mt.pet.attack.enchant mt.score 3
scoreboard players operation $mt.pet.attack mt.score += $mt.pet.attack.enchant mt.score

data modify storage mobtamer:temp data.active_effects set from entity @s active_effects
effect clear @s
execute store result score $mt.pet.attack.no_effect mt.score run attribute @s generic.attack_damage get 1
scoreboard players operation $mt.pet.attack.no_effect mt.score += $mt.pet.attack.enchant mt.score
execute store result score $mt.pet.attack.base mt.score run attribute @s generic.attack_damage base get 1
execute store result score $mt.pet.attack.add.variant mt.score run attribute @s generic.attack_damage modifier value get mt.attack_damage.add
scoreboard players operation $mt.pet.attack.add mt.score = $mt.pet.attack mt.score
scoreboard players operation $mt.pet.attack.add mt.score -= $mt.pet.attack.base mt.score
scoreboard players operation $mt.pet.attack.add.weapon mt.score = $mt.pet.attack.no_effect mt.score
scoreboard players operation $mt.pet.attack.add.weapon mt.score -= $mt.pet.attack.base mt.score
scoreboard players operation $mt.pet.attack.add.weapon mt.score -= $mt.pet.attack.add.variant mt.score
scoreboard players operation $mt.pet.attack.add.effect mt.score = $mt.pet.attack mt.score
scoreboard players operation $mt.pet.attack.add.effect mt.score -= $mt.pet.attack.no_effect mt.score
execute if entity @s[type=#mobtamer:custom_attack/can_be] run scoreboard players operation $mt.pet.attack.base mt.score = @s mt.attack_damage
execute if entity @s[type=#mobtamer:custom_attack/can_be] run scoreboard players operation $mt.pet.attack mt.score = @s mt.attack_damage
execute if entity @s[type=#mobtamer:custom_attack/can_be] run scoreboard players operation $mt.pet.attack.no_effect mt.score = @s mt.attack_damage

data modify entity @s active_effects set from storage mobtamer:temp data.active_effects
data remove storage mobtamer:temp data.active_effects

execute if entity @s[type=rabbit] if data entity @s {RabbitType:99} run scoreboard players set $mt.pet.attack.base mt.score 8
execute if entity @s[type=rabbit] if data entity @s {RabbitType:99} run scoreboard players set $mt.pet.attack.no_effect mt.score 8
execute if entity @s[type=rabbit] if data entity @s {RabbitType:99} run scoreboard players set $mt.pet.attack mt.score 8

execute store result storage mobtamer:temp data.pet_status.attack.base int 1 run scoreboard players get $mt.pet.attack.base mt.score
execute store result storage mobtamer:temp data.pet_status.attack.no_effect int 1 run scoreboard players get $mt.pet.attack.no_effect mt.score
execute store result storage mobtamer:temp data.pet_status.attack.add.weapon int 1 run scoreboard players get $mt.pet.attack.add.weapon mt.score
execute store result storage mobtamer:temp data.pet_status.attack.add.effect int 1 run scoreboard players get $mt.pet.attack.add.effect mt.score
execute store result storage mobtamer:temp data.pet_status.attack.add.variant int 1 run scoreboard players get $mt.pet.attack.add.variant mt.score
execute store result storage mobtamer:temp data.pet_status.attack.final int 1 run scoreboard players get $mt.pet.attack mt.score

data modify storage mobtamer:temp data.pet_status.power_up_max.attack set value 0
execute if entity @s[type=#mobtamer:power_up/attack] run data modify storage mobtamer:temp data.pet_status.can_power_up.attack set value 1b
execute if entity @s[tag=mt.custom_attack] run data modify storage mobtamer:temp data.pet_status.can_power_up.attack set value 1b

scoreboard players reset $mt.pet.attack mt.score
scoreboard players reset $mt.pet.attack.base mt.score
scoreboard players reset $mt.pet.attack.enchantment mt.score
scoreboard players reset $mt.pet.attack.variant mt.score
scoreboard players reset $mt.pet.attack.add mt.score
scoreboard players reset $mt.pet.attack.add.weapon mt.score
scoreboard players reset $mt.pet.attack.add.effect mt.score
scoreboard players reset $mt.pet.attack.no_effect mt.score
