execute if data storage mobtamer:temp data.pet.state{stop:1b} run data modify entity @s text set value '["",{"text":"⚓ ","color": "white"},{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if data storage mobtamer:temp data.pet.state{stop:1b} run return 1
execute if data storage mobtamer:temp data.pet.state{targeting:1b} run data modify entity @s text set value '["",{"text":"⚔ ","color": "red"},{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
execute if data storage mobtamer:temp data.pet.state{targeting:1b} run return 1
data modify entity @s text set value '["",{"text":"♥","color": "red"},{"score":{"name": "$mt.pet","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.pet","objective": "mt.max_health"}}]'
