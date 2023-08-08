
# execute if block ~ ~-0.6 ~ #mobtamer:silverfish_hide_in run effect give @s[distance=..1] slow_falling 1 0 true
# execute if block ~ ~-0.6 ~ #mobtamer:silverfish_hide_in if predicate mobtamer:random/200m run data modify entity @s[distance=..1] FallDistance set value 0d
# execute if block ~ ~-0.6 ~ #mobtamer:silverfish_hide_in run tp ~ ~0.2 ~
# execute if block ~ ~-0.1 ~ #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
# execute if block ~-0.2 ~-0.1 ~-0.2 #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
# execute if block ~0.2 ~-0.1 ~0.2 #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store

# execute if block ~ ~-0.6 ~ #mobtamer:silverfish_hide_in run tellraw @a "Y"
# execute unless block ~ ~-0.6 ~ #mobtamer:silverfish_hide_in run tellraw @a "N"


execute if entity @s[distance=..1] if block ~ ~-0.5 ~ #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~-0.2 ~-0.5 ~-0.2 #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~-0.2 ~-0.5 ~ #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~-0.2 ~-0.5 ~0.2 #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~ ~-0.5 ~-0.2 #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~ ~-0.5 ~ #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~ ~-0.5 ~0.2 #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~0.2 ~-0.5 ~-0.2 #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~0.2 ~-0.5 ~ #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
execute if entity @s[distance=..1] if block ~0.2 ~-0.5 ~0.2 #mobtamer:silverfish_hide_in run function mobtamer:sys/player/pet/each/unique/silverfish_store
