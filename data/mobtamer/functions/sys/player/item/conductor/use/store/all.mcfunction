# execute as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.down] at @s run function mobtamer:sys/player/pet/each/store/0
execute if data storage mobtamer:settings data{can_store_down_pets:0b} as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.down] at @s run function mobtamer:sys/player/pet/each/store/0
execute if data storage mobtamer:settings data{can_store_down_pets:1b} as @e[team=!,tag=mt.player_check,tag=mt.pet] at @s run function mobtamer:sys/player/pet/each/store/0
