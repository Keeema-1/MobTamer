
function mobtamer:sys/player/player_check_add
function mobtamer:sys/common/team/same_tag/add

execute positioned ^ ^ ^8 as @e[type=#mobtamer:all_mobs,tag=!mt.same_team,distance=..16] run function mobtamer:sys/player/advancement/player_hurt_entity/any/1

function mobtamer:sys/player/player_check_remove
function mobtamer:sys/common/team/same_tag/remove
