scoreboard players set $mt.const mt.score 2
scoreboard players operation $mt.player.settings mt.score = @s mt.settings
scoreboard players operation $mt.player.settings mt.score /= $mt.player.settings.baby_grow mt.score
scoreboard players operation $mt.player.settings mt.score %= $mt.const mt.score
execute if score $mt.player.settings mt.score matches 0 run data modify storage mobtamer:temp data.player_settings.baby_grow set value 0b
execute if score $mt.player.settings mt.score matches 1 run data modify storage mobtamer:temp data.player_settings.baby_grow set value 1b
scoreboard players set $mt.const mt.score 4
scoreboard players operation $mt.player.settings mt.score = @s mt.settings
scoreboard players operation $mt.player.settings mt.score /= $mt.player.settings.default_strategy mt.score
scoreboard players operation $mt.player.settings mt.score %= $mt.const mt.score
execute if score $mt.player.settings mt.score matches 0 run data modify storage mobtamer:temp data.player_settings.default_strategy set value "attack"
execute if score $mt.player.settings mt.score matches 1 run data modify storage mobtamer:temp data.player_settings.default_strategy set value "balance"
execute if score $mt.player.settings mt.score matches 2 run data modify storage mobtamer:temp data.player_settings.default_strategy set value "recover"
execute if score $mt.player.settings mt.score matches 3 run data modify storage mobtamer:temp data.player_settings.default_strategy set value "follow"
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.player.settings mt.score
