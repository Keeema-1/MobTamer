scoreboard players set $mt.const mt.score 2
scoreboard players operation $mt.player.settings mt.score = @s mt.settings
scoreboard players operation $mt.player.settings mt.score /= $mt.player.settings.baby_grow mt.score
scoreboard players operation $mt.player.settings mt.score %= $mt.const mt.score
execute store result storage mobtamer:temp data.player_settings.baby_grow byte 1 run scoreboard players get $mt.player.settings mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.player.settings mt.score
