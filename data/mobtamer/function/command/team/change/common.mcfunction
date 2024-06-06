function mobtamer:sys/player/player_check_add
team join mt.common @e[team=!,tag=mt.player_check]
function mobtamer:sys/player/remove
execute if data storage mobtamer:settings data{team_color:"aqua"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"aqua"}]
execute if data storage mobtamer:settings data{team_color:"white"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"white"}]
execute if data storage mobtamer:settings data{team_color:"blue"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"blue"}]
execute if data storage mobtamer:settings data{team_color:"green"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"green"}]
execute if data storage mobtamer:settings data{team_color:"yellow"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"yellow"}]
execute if data storage mobtamer:settings data{team_color:"gold"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"gold"}]
execute if data storage mobtamer:settings data{team_color:"red"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"red"}]
execute if data storage mobtamer:settings data{team_color:"light_purple"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"light_purple"}]
execute if data storage mobtamer:settings data{team_color:"red"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.common","interpret": true,"color":"red"}]
