
execute if entity @s[tag=!mt.display_exist] run function mobtamer:sys/player/pet/each/status/display/00

# sys/display/でつける
tag @s remove mt.display_exist
