
execute on vehicle run scoreboard players set $mt.custom_attack0.return mt.score 1

execute unless score $mt.custom_attack0.return mt.score matches 1 run function mobtamer:sys/player/pet/each/unique/custom_attack/0_sub

scoreboard players reset $mt.custom_attack0.return mt.score
