scoreboard players set @s mt.settings 0
execute if data storage mobtamer:temp data.player_settings{baby_grow:0b} run scoreboard players set $mt.player.settings mt.score 0
execute if data storage mobtamer:temp data.player_settings{baby_grow:1b} run scoreboard players set $mt.player.settings mt.score 1
scoreboard players operation $mt.player.settings mt.score *= $mt.player.settings.baby_grow mt.score
scoreboard players operation @s mt.settings += $mt.player.settings mt.score
execute if data storage mobtamer:temp data.player_settings{default_strategy:"attack"} run scoreboard players set $mt.player.settings mt.score 0
execute if data storage mobtamer:temp data.player_settings{default_strategy:"balance"} run scoreboard players set $mt.player.settings mt.score 1
execute if data storage mobtamer:temp data.player_settings{default_strategy:"recover"} run scoreboard players set $mt.player.settings mt.score 2
execute if data storage mobtamer:temp data.player_settings{default_strategy:"follow"} run scoreboard players set $mt.player.settings mt.score 3
scoreboard players operation $mt.player.settings mt.score *= $mt.player.settings.default_strategy mt.score
scoreboard players operation @s mt.settings += $mt.player.settings mt.score
scoreboard players reset $mt.player.settings mt.score
