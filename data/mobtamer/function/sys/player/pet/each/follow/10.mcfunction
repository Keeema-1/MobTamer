execute if entity @s[type=!#mobtamer:fire_resistance] if entity @s[type=!#mobtamer:can_fly] if block ~ ~-1 ~ #mobtamer:dangerous if block ~ ~ ~ #mobtamer:space run return 1
execute if entity @s[type=!#mobtamer:fire_resistance] if entity @s[type=!#mobtamer:can_fly] if block ~ ~-2 ~ #mobtamer:dangerous if block ~ ~-1 ~ #mobtamer:space if block ~ ~ ~ #mobtamer:space run return 1
execute if entity @s[type=!#mobtamer:fire_resistance] if entity @s[type=!#mobtamer:can_fly] if block ~ ~-3 ~ #mobtamer:space if block ~ ~-2 ~ #mobtamer:space if block ~ ~-1 ~ #mobtamer:space if block ~ ~ ~ #mobtamer:space run return 1
execute if entity @s[type=!#mobtamer:fire_resistance] if entity @s[type=!#mobtamer:can_fly] if block ~ ~-3 ~ #mobtamer:dangerous if block ~ ~-2 ~ #mobtamer:space if block ~ ~-1 ~ #mobtamer:space if block ~ ~ ~ #mobtamer:space run return 1

execute if entity @s[type=#mobtamer:fire_resistance] if entity @s[type=!#mobtamer:can_fly] if block ~ ~-1 ~ #mobtamer:dangerous_fire_resistance if block ~ ~ ~ #mobtamer:space run return 1
execute if entity @s[type=#mobtamer:fire_resistance] if entity @s[type=!#mobtamer:can_fly] if block ~ ~-2 ~ #mobtamer:dangerous_fire_resistance if block ~ ~-1 ~ #mobtamer:space if block ~ ~ ~ #mobtamer:space run return 1
execute if entity @s[type=#mobtamer:fire_resistance] if entity @s[type=!#mobtamer:can_fly] if block ~ ~-3 ~ #mobtamer:space if block ~ ~-2 ~ #mobtamer:space if block ~ ~-1 ~ #mobtamer:space if block ~ ~ ~ #mobtamer:space run return 1
execute if entity @s[type=#mobtamer:fire_resistance] if entity @s[type=!#mobtamer:can_fly] if block ~ ~-3 ~ #mobtamer:dangerous_fire_resistance if block ~ ~-2 ~ #mobtamer:space if block ~ ~-1 ~ #mobtamer:space if block ~ ~ ~ #mobtamer:space run return 1

function mobtamer:sys/player/pet/each/follow/100
