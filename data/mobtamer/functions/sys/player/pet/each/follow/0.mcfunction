execute if entity @s[tag=!mt.following] run function mobtamer:sys/player/pet/each/follow/00
execute if entity @s[tag=mt.following] run function mobtamer:sys/player/pet/each/follow/01

execute if entity @s[type=!#mobtamer:fire_resistance] if data storage mobtamer:temp data.pet{OnGround:1b} at @s if block ~ ~-0.5 ~ #mobtamer:common/dangerous run data modify entity @s Motion[1] set value 0.37
execute if entity @s[type=#mobtamer:fire_resistance] if data storage mobtamer:temp data.pet{OnGround:1b} at @s if block ~ ~-0.5 ~ #mobtamer:common/dangerous_fire_resistance run data modify entity @s Motion[1] set value 0.37
