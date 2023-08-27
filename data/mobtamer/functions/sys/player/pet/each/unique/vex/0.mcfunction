
execute unless data entity @s {HurtTime:0s} run scoreboard players set $mt.vex.return mt.score 1
execute if score @s mt.hostile_interval matches 1.. run scoreboard players set $mt.vex.return mt.score 1

execute unless score $mt.vex.return mt.score matches 1 run function mobtamer:sys/player/pet/each/unique/vex/0_sub

scoreboard players reset $mt.vex.return mt.score
