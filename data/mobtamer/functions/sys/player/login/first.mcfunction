scoreboard players operation @s mt.id = $mt.sys mt.id
scoreboard players add $mt.sys mt.id 1
# tellraw @s "first login"
give @s golden_apple

scoreboard players set @s mt.cost 0
scoreboard players set @s mt.tame_type_count 0

advancement revoke @s from mobtamer:mobtamer/road_to_mobtamer
advancement revoke @s from mobtamer:mobtamer/challenge
advancement revoke @s from mobtamer:mobtamer/tame/tame_type

tellraw @s ["",{"text":"=====================================================","color": "green"}]
tellraw @s ["",{"storage": "mobtamer:text","nbt":"data.tutorial.welcome[0]","interpret": true}]
tellraw @s ["",{"storage": "mobtamer:text","nbt":"data.tutorial.welcome[1]","interpret": true}]
tellraw @s ["",{"storage": "mobtamer:text","nbt":"data.tutorial.welcome[2]","interpret": true}]
tellraw @s ["",{"storage": "mobtamer:text","nbt":"data.tutorial.welcome[3]","interpret": true}]
tellraw @s ["",{"text":"=====================================================","color": "green"}]

function mobtamer:command/give/manual
function mobtamer:command/give/settings