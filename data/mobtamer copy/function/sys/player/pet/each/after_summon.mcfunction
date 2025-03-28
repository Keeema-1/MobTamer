scoreboard players remove @s mt.summon_check_time 1

execute if score @s mt.summon_check_time matches 5 run function mobtamer:sys/player/summon/cost_check_delay

execute unless score @s mt.summon_check_time matches 1.. run scoreboard players reset @s mt.summon_check_time
