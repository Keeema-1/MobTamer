
execute store result score #mt.pet.attack mt.temp run attribute @s attack_damage get 1

scoreboard players set #mt.pet.attack.enchant mt.temp 0
execute if data entity @s equipment.mainhand.components."minecraft:enchantments"{"minecraft:sharpness":1} run scoreboard players set #mt.pet.attack.enchant mt.temp 1
execute if data entity @s equipment.mainhand.components."minecraft:enchantments"{"minecraft:sharpness":2} run scoreboard players set #mt.pet.attack.enchant mt.temp 1
execute if data entity @s equipment.mainhand.components."minecraft:enchantments"{"minecraft:sharpness":3} run scoreboard players set #mt.pet.attack.enchant mt.temp 2
execute if data entity @s equipment.mainhand.components."minecraft:enchantments"{"minecraft:sharpness":4} run scoreboard players set #mt.pet.attack.enchant mt.temp 2
execute if data entity @s equipment.mainhand.components."minecraft:enchantments"{"minecraft:sharpness":5} run scoreboard players set #mt.pet.attack.enchant mt.temp 3
execute if data entity @s equipment.mainhand.components."minecraft:enchantments"{"minecraft:sharpness":6} run scoreboard players set #mt.pet.attack.enchant mt.temp 3
scoreboard players operation #mt.pet.attack mt.temp += #mt.pet.attack.enchant mt.temp

data modify storage mobtamer:temp data.active_effects set from entity @s active_effects
effect clear @s
execute store result score #mt.pet.attack.no_effect mt.temp run attribute @s attack_damage get 1
scoreboard players operation #mt.pet.attack.no_effect mt.temp += #mt.pet.attack.enchant mt.temp
execute store result score #mt.pet.attack.base mt.temp run attribute @s attack_damage base get 1
execute store result score #mt.pet.attack.add.variant mt.temp run attribute @s attack_damage modifier value get mt.attack_damage.add
scoreboard players operation #mt.pet.attack.add mt.temp = #mt.pet.attack mt.temp
scoreboard players operation #mt.pet.attack.add mt.temp -= #mt.pet.attack.base mt.temp
scoreboard players operation #mt.pet.attack.add.weapon mt.temp = #mt.pet.attack.no_effect mt.temp
scoreboard players operation #mt.pet.attack.add.weapon mt.temp -= #mt.pet.attack.base mt.temp
scoreboard players operation #mt.pet.attack.add.weapon mt.temp -= #mt.pet.attack.add.variant mt.temp
scoreboard players operation #mt.pet.attack.add.effect mt.temp = #mt.pet.attack mt.temp
scoreboard players operation #mt.pet.attack.add.effect mt.temp -= #mt.pet.attack.no_effect mt.temp
# execute if entity @s[type=#mobtamer:custom_attack/can_be] run scoreboard players operation #mt.pet.attack.base mt.temp = @s mt.attack_damage
# execute if entity @s[type=#mobtamer:custom_attack/can_be] run scoreboard players operation #mt.pet.attack mt.temp = @s mt.attack_damage
# execute if entity @s[type=#mobtamer:custom_attack/can_be] run scoreboard players operation #mt.pet.attack.no_effect mt.temp = @s mt.attack_damage

data modify entity @s active_effects set from storage mobtamer:temp data.active_effects
data remove storage mobtamer:temp data.active_effects

execute if entity @s[type=rabbit] if data entity @s {RabbitType:99} run scoreboard players set #mt.pet.attack.base mt.temp 8
execute if entity @s[type=rabbit] if data entity @s {RabbitType:99} run scoreboard players set #mt.pet.attack.no_effect mt.temp 8
execute if entity @s[type=rabbit] if data entity @s {RabbitType:99} run scoreboard players set #mt.pet.attack mt.temp 8

execute store result storage mobtamer:temp data.pet_status.attack.base int 1 run scoreboard players get #mt.pet.attack.base mt.temp
execute store result storage mobtamer:temp data.pet_status.attack.no_effect int 1 run scoreboard players get #mt.pet.attack.no_effect mt.temp
execute store result storage mobtamer:temp data.pet_status.attack.add.weapon int 1 run scoreboard players get #mt.pet.attack.add.weapon mt.temp
execute store result storage mobtamer:temp data.pet_status.attack.add.effect int 1 run scoreboard players get #mt.pet.attack.add.effect mt.temp
execute store result storage mobtamer:temp data.pet_status.attack.add.variant int 1 run scoreboard players get #mt.pet.attack.add.variant mt.temp
execute store result storage mobtamer:temp data.pet_status.attack.final int 1 run scoreboard players get #mt.pet.attack mt.temp

data modify storage mobtamer:temp data.pet_status.power_up_max.attack set value 0
# execute if entity @s[type=#mobtamer:power_up/attack] run data modify storage mobtamer:temp data.pet_status.can_power_up.attack set value 1b
execute if entity @s[tag=mt.custom_attack] run data modify storage mobtamer:temp data.pet_status.can_power_up.attack set value 1b

scoreboard players reset #mt.pet.attack mt.temp
scoreboard players reset #mt.pet.attack.base mt.temp
scoreboard players reset #mt.pet.attack.enchantment mt.temp
scoreboard players reset #mt.pet.attack.variant mt.temp
scoreboard players reset #mt.pet.attack.add mt.temp
scoreboard players reset #mt.pet.attack.add.weapon mt.temp
scoreboard players reset #mt.pet.attack.add.effect mt.temp
scoreboard players reset #mt.pet.attack.no_effect mt.temp
