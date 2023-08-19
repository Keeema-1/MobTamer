
tellraw @s [{"text":"テイム記録がリセットされました。","color":"red"}]

advancement revoke @s from mobtamer:mobtamer/tame/tame_type
advancement revoke @s from mobtamer:mobtamer/tame/count/10types

scoreboard players reset @s mt.tame_type_count


