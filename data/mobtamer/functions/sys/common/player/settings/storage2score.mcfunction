scoreboard players set @s mt.settings 0
execute store result score $mt.player.settings mt.score run data get storage mobtamer:temp data.player_settings.baby_grow
scoreboard players operation $mt.player.settings mt.score *= $mt.player.settings.baby_grow mt.score
scoreboard players operation @s mt.settings += $mt.player.settings mt.score
scoreboard players reset $mt.player.settings mt.score
