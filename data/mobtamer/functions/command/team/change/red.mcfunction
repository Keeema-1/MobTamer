function mobtamer:sys/player/player_check_add
team join mt.red @e[team=!,tag=mt.player_check]
function mobtamer:sys/player/remove
tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.join.red","interpret": true}]