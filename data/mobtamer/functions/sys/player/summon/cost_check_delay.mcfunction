
function mobtamer:sys/common/pet/status/all
execute store result score @s mt.cost run data get storage mobtamer:temp data.pet_status.cost.value

scoreboard players set $mt.cost.sum mt.score 0
execute as @e[team=!,tag=mt.player_check,tag=!mt.,tag=mt.pet] run scoreboard players operation $mt.cost.sum mt.score += @s mt.cost
scoreboard players operation $mt.cost.sum.before mt.score = $mt.cost.sum mt.score
scoreboard players operation $mt.cost.sum.before mt.score -= @s mt.cost

execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run function mobtamer:sys/player/pet/each/store/0
execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run tellraw @a[tag=mt.player_check] [{"storage": "mobtamer:text","nbt":"data.store.cost_over","interpret": true}]
execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run tellraw @a[tag=mt.player_check] [{"text": "　"},{"storage": "mobtamer:text","nbt":"data.common.total_cost","interpret": true,"color": "yellow"},{"text": "： ","color": "yellow"},{"score":{"name": "$mt.cost.sum.before","objective": "mt.score"},"color": "yellow"},{"text": " → ","color": "yellow"},{"score":{"name": "$mt.cost.sum","objective": "mt.score"},"color": "red"},{"text": " / ","color": "yellow"},{"score":{"name": "@a[tag=mt.player_check,limit=1]","objective": "mt.cost"},"color": "aqua"}]

scoreboard players reset $mt.cost.sum mt.score
scoreboard players reset $mt.cost.sum.before mt.score
data remove storage mobtamer:temp data.pet_status
