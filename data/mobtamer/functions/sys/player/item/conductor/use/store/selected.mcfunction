execute if data storage mobtamer:settings data{can_store_down_pets:1b} at @s run function mobtamer:sys/player/pet/each/store/0
execute if data storage mobtamer:settings data{can_store_down_pets:0b} if entity @s[tag=!mt.down] at @s run function mobtamer:sys/player/pet/each/store/0
