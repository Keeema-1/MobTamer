function mobtamer:command/kill
data remove storage mobtamer:settings data.release_progress

scoreboard players reset * mt.id
scoreboard players reset * mt.login

scoreboard players reset @a

execute as @a run function mobtamer:sys/player/login/login


function mobtamer:load
