tag @s add mt.me

execute if data storage mobtamer:settings data{team_color:"aqua"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"aqua"}]
execute if data storage mobtamer:settings data{team_color:"white"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"white"}]
execute if data storage mobtamer:settings data{team_color:"blue"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"blue"}]
execute if data storage mobtamer:settings data{team_color:"green"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"green"}]
execute if data storage mobtamer:settings data{team_color:"yellow"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"yellow"}]
execute if data storage mobtamer:settings data{team_color:"gold"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"gold"}]
execute if data storage mobtamer:settings data{team_color:"red"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"red"}]
execute if data storage mobtamer:settings data{team_color:"light_purple"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"light_purple"}]
execute if data storage mobtamer:settings data{team_color:"red"} run tellraw @s [{"text":"＜共通チームの参加者一覧＞","color":"red"}]

execute as @a[team=mt.common] run tellraw @a[tag=mt.me] [{"text":"  "},{"selector":"@s"}]
execute unless entity @a[team=mt.common] run tellraw @s [{"text":"  なし"}]

tag @s remove mt.me
