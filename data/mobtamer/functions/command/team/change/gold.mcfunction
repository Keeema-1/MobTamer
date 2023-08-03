function mobtamer:sys/player/player_check_add
team join mt.gold @e[team=!,tag=mt.player_check]
function mobtamer:sys/player/remove
tellraw @s [{"text":"橙チームに参加しました。","color":"gold"}]