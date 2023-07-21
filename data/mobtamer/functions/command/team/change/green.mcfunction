function mobtamer:sys/player/player_check_add
team join mt.green @e[team=!,tag=mt.player_check]
function mobtamer:sys/player/remove
tellraw @a [{"text":"緑チームに参加しました。","color":"green"}]