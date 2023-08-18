function mobtamer:command/give/conductor

scoreboard players operation $mt.cost.before mt.score = @s mt.cost
scoreboard players add @s mt.cost 30
tellraw @s [{"storage": "mobtamer:text","nbt":"data.cost.up","interpret": true,"color": "aqua"},{"text":" （","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"}},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"}},{"text":"）","color": "aqua"}]
scoreboard players reset $mt.cost.before mt.score

tellraw @s ["",{"storage": "mobtamer:text","nbt":"data.get.conductor","interpret": true}]

tellraw @s ["",{"text":"=====================================================","color": "green"}]
tellraw @s ["",{"storage": "mobtamer:text","nbt":"data.tutorial.conductor[0]","interpret": true}]
tellraw @s ["",{"storage": "mobtamer:text","nbt":"data.tutorial.conductor[1]","interpret": true}]
tellraw @s ["",{"storage": "mobtamer:text","nbt":"data.tutorial.conductor[2]","interpret": true}]
tellraw @s ["",{"text":"=====================================================","color": "green"}]
