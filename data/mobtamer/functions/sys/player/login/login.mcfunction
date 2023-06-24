# tellraw @s "login"
execute unless score @s mt.id matches -2147483648..2147483647 run function mobtamer:sys/player/login/first
team join mt.common
scoreboard players enable @s mt.trigger
