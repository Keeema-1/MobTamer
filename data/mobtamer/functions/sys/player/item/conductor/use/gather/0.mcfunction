tag @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] add mt.tp_pet
execute unless entity @e[team=mt.common,tag=mt.tp_pet] run tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet] add mt.tp_pet

function mobtamer:sys/common/pet/tp/0

tag @e[team=mt.common,tag=mt.tp_pet] remove mt.tp_pet
