function mobtamer:command/kill
data remove storage mobtamer:settings data

scoreboard players reset * mt.id
scoreboard players reset * mt.login

function mobtamer:load
