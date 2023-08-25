scoreboard players set $mt.cost.sum mt.score 0
execute as @e[team=!,tag=mt.player_check,tag=mt.pet] run scoreboard players operation $mt.cost.sum mt.score += @s mt.cost

title @s actionbar ["",{"text":"【","color": "green"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "green"},{"text":"：","color": "green"},{"storage": "mobtamer:text","nbt":"data.mode.info","interpret": true,"color": "green"},{"text":"】 ","color": "green"},{"storage": "mobtamer:text","nbt":"data.common.total_cost","interpret": true,"color": "green"},{"text": " "},{"score":{"name": "$mt.cost.sum","objective": "mt.score"},"color": "yellow"},{"text":"/"},{"score":{"name": "@s","objective": "mt.cost"}}]
