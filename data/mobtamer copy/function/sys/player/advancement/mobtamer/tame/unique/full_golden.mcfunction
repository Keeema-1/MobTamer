# scoreboard players operation $mt.cost.before mt.score = @s mt.cost
# scoreboard players add @s mt.cost 50
# tellraw @s [{"storage": "mobtamer:text","nbt":"data.cost.up","interpret": true,"color": "aqua"},{"text":" (","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"},"color": "aqua"},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"},"color": "aqua"},{"text":")","color": "aqua"}]
# scoreboard players reset $mt.cost.before mt.score
