scoreboard players set #mt.const mt.temp 100
scoreboard players operation #mt.pet.health mt.temp = @s mt.health
scoreboard players operation #mt.pet.max_health mt.temp = @s mt.max_health
scoreboard players operation #mt.pet.health mt.temp /= #mt.const mt.temp
scoreboard players operation #mt.pet.max_health mt.temp /= #mt.const mt.temp
execute if score #mt.pet.health mt.temp matches ..-1 run scoreboard players set #mt.pet.health mt.temp 0
execute store result score #mt.pet.max_health.add.variant mt.temp run attribute @s max_health modifier value get mt.max_health.add
scoreboard players operation #mt.pet.max_health.base mt.temp = #mt.pet.max_health mt.temp
scoreboard players operation #mt.pet.max_health.base mt.temp -= #mt.pet.max_health.add.variant mt.temp

execute store result storage mobtamer:temp data.pet_status.max_health.final int 1 run scoreboard players get #mt.pet.max_health mt.temp
execute store result storage mobtamer:temp data.pet_status.max_health.add.variant int 1 run scoreboard players get #mt.pet.max_health.add.variant mt.temp
execute store result storage mobtamer:temp data.pet_status.max_health.base int 1 run scoreboard players get #mt.pet.max_health.base mt.temp
execute store result storage mobtamer:temp data.pet_status.health int 1 run scoreboard players get #mt.pet.health mt.temp

data modify storage mobtamer:temp data.pet_status.can_power_up.max_health set value 1b

scoreboard players reset #mt.const mt.temp
scoreboard players reset #mt.pet.max_health mt.temp
scoreboard players reset #mt.pet.max_health.base mt.temp
scoreboard players reset #mt.pet.max_health.add.variant mt.temp
scoreboard players reset #mt.pet.health mt.temp
