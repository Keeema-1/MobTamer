scoreboard players operation @s mt.id = $mt.sys mt.id
scoreboard players add $mt.sys mt.id 1
# tellraw @s "first login"
give @s golden_apple
function mobtamer:command/give/conductor

tellraw @s ["",{"storage":"mobtamer:text","nbt":"data.welcome.0[0]","interpret": true,"color": "green","italic": true}]
tellraw @s ["",{"storage":"mobtamer:text","nbt":"data.welcome.1[0]","interpret": true,"color": "green","italic": true},{"translate":"item.minecraft.golden_apple","color": "aqua","italic":true},{"storage":"mobtamer:text","nbt":"data.welcome.1[1]","interpret": true,"color": "green","italic": true}]
tellraw @s ["",{"storage":"mobtamer:text","nbt":"data.welcome.2[0]","interpret": true,"color": "green","italic": true}]
tellraw @s ["",{"storage":"mobtamer:text","nbt":"data.welcome.3[0]","interpret": true,"color": "green","italic": true}]

function mobtamer:command/give/manual