execute if data storage mobtamer:settings data{forceload_pet_chunk:1b} run forceload remove all
execute as @a at @s run function mobtamer:sys/player/tick
scoreboard players reset * mt.login
scoreboard players set @a mt.login 1
scoreboard players operation $mt.login.sum.before mt.score = $mt.login.sum mt.score
scoreboard players reset $mt.login.sum mt.score
execute as @a run scoreboard players add $mt.login.sum mt.score 1
execute unless score $mt.login.sum mt.score = $mt.login.sum.before mt.score run tellraw @a "人数変動"
scoreboard players reset $mt.login.sum.before mt.score
