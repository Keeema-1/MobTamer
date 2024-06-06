execute if entity @s[tag=mt.down] if data storage mobtamer:settings data{can_store_down_pets:0b} run return 1
execute at @s run function mobtamer:sys/player/pet/each/store/0
