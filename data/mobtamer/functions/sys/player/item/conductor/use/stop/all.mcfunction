execute if entity @e[team=!,tag=mt.player_check,tag=mt.stop,tag=mt.pet,tag=!mt.down] run scoreboard players set $mt.stop.on mt.score 1
execute if score $mt.stop.on mt.score matches 1.. as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.down] run function mobtamer:sys/player/pet/each/stop/off
execute unless score $mt.stop.on mt.score matches 1.. as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.down] run function mobtamer:sys/player/pet/each/stop/on
#execute as @e[team=!,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/pet/each/stop/change
scoreboard players reset $mt.stop.on mt.score