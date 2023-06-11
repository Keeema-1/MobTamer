
function mobtamer:sys/player/player_check_add

execute positioned ^ ^ ^8 as @e[type=#mobtamer:all_mobs,team=!mt.common,distance=..16] run function mobtamer:sys/player/advancement/player_hurt_entity/any/1

function mobtamer:sys/player/player_check_remove
