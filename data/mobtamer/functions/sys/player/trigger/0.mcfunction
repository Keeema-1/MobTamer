
execute if score @s mt.trigger matches 1..999 run function mobtamer:sys/player/trigger/settings/0
execute if score @s mt.trigger matches 1000.. run function mobtamer:sys/player/trigger/cheat/0

execute if score @s mt.trigger matches -1 run function mobtamer:sys/player/trigger/reload

scoreboard players reset @s mt.trigger
scoreboard players enable @s mt.trigger
