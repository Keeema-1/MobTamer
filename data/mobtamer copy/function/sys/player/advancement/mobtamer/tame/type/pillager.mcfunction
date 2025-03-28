scoreboard players operation $mt.cost.before mt.score = @s mt.cost
scoreboard players add @s mt.cost 10
scoreboard players add @s mt.tame_type_count 1
data modify storage mobtamer:database data.record.pillager.any set value 1b
tellraw @s [{"storage": "mobtamer:text","nbt":"data.cost.up","interpret": true,"color": "aqua"},{"text":" (","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"},"color": "aqua"},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"},"color": "aqua"},{"text":")","color": "aqua"}]
scoreboard players reset $mt.cost.before mt.score
tellraw @s [{"storage": "mobtamer:text","nbt":"data.tame.tame_type_count","interpret": true,"color": "aqua"},{"text":"：","color":"aqua"},{"score":{"name":"@s","objective":"mt.tame_type_count"}}]
advancement grant @s only mobtamer:mobtamer/caution/raider
