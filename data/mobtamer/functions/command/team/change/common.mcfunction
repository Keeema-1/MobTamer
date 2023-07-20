function mobtamer:sys/player/player_check_add
team join mt.common @e[team=!,tag=mt.player_check]
function mobtamer:sys/player/remove
execute if data storage mobtamer:settings data{team_color:"aqua"} run tellraw @a [{"text":"共通チームに参加しました。","color":"aqua"}]
execute if data storage mobtamer:settings data{team_color:"white"} run tellraw @a [{"text":"共通チームに参加しました。","color":"white"}]
execute if data storage mobtamer:settings data{team_color:"blue"} run tellraw @a [{"text":"共通チームに参加しました。","color":"blue"}]
execute if data storage mobtamer:settings data{team_color:"green"} run tellraw @a [{"text":"共通チームに参加しました。","color":"green"}]
execute if data storage mobtamer:settings data{team_color:"yellow"} run tellraw @a [{"text":"共通チームに参加しました。","color":"yellow"}]
execute if data storage mobtamer:settings data{team_color:"gold"} run tellraw @a [{"text":"共通チームに参加しました。","color":"gold"}]
execute if data storage mobtamer:settings data{team_color:"red"} run tellraw @a [{"text":"共通チームに参加しました。","color":"red"}]
execute if data storage mobtamer:settings data{team_color:"light_purple"} run tellraw @a [{"text":"共通チームに参加しました。","color":"light_purple"}]
execute if data storage mobtamer:settings data{team_color:"red"} run tellraw @a [{"text":"共通チームに参加しました。","color":"red"}]
