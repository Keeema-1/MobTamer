
tellraw @s [{"text":"全ての進捗やテイム記録がリセットされました。","color":"red"}]

execute as @e[team=!,tag=mt.player_check,tag=mt.pet] at @s run function mobtamer:sys/player/pet/each/store/0

scoreboard players reset @s

function mobtamer:sys/player/login/login

