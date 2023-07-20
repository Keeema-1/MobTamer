scoreboard players set $mt.store.when_power_up mt.score 1

execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] at @s run function mobtamer:sys/player/pet/each/store/0

scoreboard players reset $mt.store.when_power_up mt.score
