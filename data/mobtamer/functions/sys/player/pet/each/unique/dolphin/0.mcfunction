
execute on vehicle run scoreboard players set $mt.dolphin.return mt.score 1

execute unless data entity @s {HurtTime:0s} run scoreboard players set $mt.dolphin.return mt.score 1

execute unless score $mt.dolphin.return mt.score matches 1 run function mobtamer:sys/player/pet/each/unique/dolphin/0_sub

scoreboard players reset $mt.dolphin.return mt.score
