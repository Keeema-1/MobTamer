
function mobtamer:sys/common/team/same_tag/add
execute positioned ^ ^ ^1 run function mobtamer:sys/player/item/conductor/use/attack/looking_check/loop
function mobtamer:sys/common/team/same_tag/remove

scoreboard players reset $mt.looking_check mt.score
scoreboard players reset $mt.distance mt.score
