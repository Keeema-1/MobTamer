function mobtamer:sys/common/sendcommandfeedback/start
execute if data storage mobtamer:settings data{forceload_pet_chunk:1b} run forceload remove all
execute if data storage mobtamer:settings data{forceload_pet_chunk:1b} as @e[type=text_display,tag=mt.logout_display] run forceload add ~ ~
execute as @e[type=text_display,tag=mt.pet_display] at @s run function mobtamer:sys/display/0
execute as @a at @s run function mobtamer:sys/player/tick
execute if predicate mobtamer:random/50m run function mobtamer:sys/team/0
execute if predicate mobtamer:random/50m at @a run function mobtamer:sys/trader/0
scoreboard players reset * mt.login
scoreboard players set @a mt.login 1
scoreboard players operation $mt.login.sum.before mt.score = $mt.login.sum mt.score
scoreboard players reset $mt.login.sum mt.score
execute as @a run scoreboard players add $mt.login.sum mt.score 1
execute unless score $mt.login.sum mt.score = $mt.login.sum.before mt.score run function mobtamer:sys/player_num_changed
scoreboard players reset $mt.login.sum.before mt.score
function mobtamer:sys/common/sendcommandfeedback/end