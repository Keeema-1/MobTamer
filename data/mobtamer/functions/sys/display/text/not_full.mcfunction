
scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.pet mt.health /= $mt.const mt.score
scoreboard players operation $mt.pet mt.max_health /= $mt.const mt.score

scoreboard players set $mt.health.color mt.score 0
scoreboard players set $mt.const mt.score 2
scoreboard players operation $mt.border mt.score = $mt.pet mt.max_health
scoreboard players operation $mt.border mt.score /= $mt.const mt.score
execute if score $mt.border mt.score matches 21.. run scoreboard players set $mt.border mt.score 20
execute if score $mt.pet mt.health <= $mt.border mt.score run scoreboard players set $mt.health.color mt.score 1
scoreboard players set $mt.const mt.score 2
scoreboard players operation $mt.border mt.score /= $mt.const mt.score
execute if score $mt.pet mt.health <= $mt.border mt.score run scoreboard players set $mt.health.color mt.score 2

execute if data storage mobtamer:temp data.pet.state{stop:1b} if score $mt.health.color mt.score matches 0 run data modify entity @s text set value '["",{"text":"⚓ ","color": "white"},{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if data storage mobtamer:temp data.pet.state{stop:1b} if score $mt.health.color mt.score matches 1 run data modify entity @s text set value '["",{"text":"⚓ ","color": "white"},{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "yellow"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if data storage mobtamer:temp data.pet.state{stop:1b} if score $mt.health.color mt.score matches 2 run data modify entity @s text set value '["",{"text":"⚓ ","color": "white"},{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "red"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if data storage mobtamer:temp data.pet.state{stop:1b} run return 1
execute if data storage mobtamer:temp data.pet.state{targeting:1b} if score $mt.health.color mt.score matches 0 run data modify entity @s text set value '["",{"text":"⚔ ","color": "red"},{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if data storage mobtamer:temp data.pet.state{targeting:1b} if score $mt.health.color mt.score matches 1 run data modify entity @s text set value '["",{"text":"⚔ ","color": "red"},{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "yellow"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if data storage mobtamer:temp data.pet.state{targeting:1b} if score $mt.health.color mt.score matches 2 run data modify entity @s text set value '["",{"text":"⚔ ","color": "red"},{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "red"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if data storage mobtamer:temp data.pet.state{targeting:1b} run return 1
execute if score $mt.health.color mt.score matches 0 run data modify entity @s text set value '["",{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if score $mt.health.color mt.score matches 1 run data modify entity @s text set value '["",{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "yellow"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if score $mt.health.color mt.score matches 2 run data modify entity @s text set value '["",{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "red"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'

scoreboard players reset $mt.border mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.health.color mt.score
