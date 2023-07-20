function mobtamer:sys/player/player_check_add
team join mt.blue @e[team=!,tag=mt.player_check]
function mobtamer:sys/player/remove
tellraw @a [{"text":"青チームに参加しました。","color":"blue"}]