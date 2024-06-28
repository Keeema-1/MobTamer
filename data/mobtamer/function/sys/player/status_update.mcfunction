
function mobtamer:sys/player/weakness/change/off
execute if data storage mobtamer:settings data{weakness:"always"} run function mobtamer:sys/player/weakness/change/on
execute if data storage mobtamer:settings data{weakness:"only_tame_challenge"} if entity @e[type=#mobtamer:can_tame,team=,tag=mt.chance,limit=1] run function mobtamer:sys/player/weakness/change/on
