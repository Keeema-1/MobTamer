tag @s add mt.display_exist

execute if entity @s[tag=mt.pet] run data modify storage mobtamer:temp data.pet.is_pet set value 1b

scoreboard players operation #mt.pet.health mt.temp = @s mt.health
scoreboard players operation #mt.pet.max_health mt.temp = @s mt.max_health

execute unless score #mt.pet.health mt.temp >= #mt.pet.max_health mt.temp run data modify storage mobtamer:temp data.pet.state merge value {not_full:1b}
execute if entity @s[tag=mt.targeting] run data modify storage mobtamer:temp data.pet.state merge value {targeting:1b}
execute if entity @s[tag=mt.stop] run data modify storage mobtamer:temp data.pet.state merge value {stop:1b}
execute if entity @s[tag=mt.down] run data modify storage mobtamer:temp data.pet.state merge value {down:1b}

scoreboard players set #mt.const mt.temp 100
scoreboard players operation #mt.pet.health mt.temp /= #mt.const mt.temp
scoreboard players operation #mt.pet.max_health mt.temp /= #mt.const mt.temp

scoreboard players set #mt.health.color mt.temp 0
scoreboard players set #mt.const mt.temp 2
scoreboard players operation #mt.border mt.temp = #mt.pet.max_health mt.temp
scoreboard players operation #mt.border mt.temp /= #mt.const mt.temp
execute if score #mt.border mt.temp matches 21.. run scoreboard players set #mt.border mt.temp 20
execute if score #mt.pet.health mt.temp <= #mt.border mt.temp run scoreboard players set #mt.health.color mt.temp 1
scoreboard players set #mt.const mt.temp 2
scoreboard players operation #mt.border mt.temp /= #mt.const mt.temp
execute if score #mt.pet.health mt.temp <= #mt.border mt.temp run scoreboard players set #mt.health.color mt.temp 2

tag @s remove mt.health.yellow
tag @s remove mt.health.red
execute if score #mt.health.color mt.temp matches 1.. run tag @s add mt.health.yellow
execute if score #mt.health.color mt.temp matches 2 run tag @s add mt.health.red

scoreboard players reset #mt.border mt.temp
