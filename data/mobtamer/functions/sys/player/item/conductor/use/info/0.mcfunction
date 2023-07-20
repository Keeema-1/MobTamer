
function mobtamer:sys/common/info/kill/mine/0

execute unless entity @e[team=!,tag=mt.selected,tag=mt.pet,limit=1] at @s anchored eyes positioned ^ ^ ^3 positioned ~ ~ ~ run function mobtamer:sys/player/item/conductor/use/info/00 
execute if entity @e[team=!,tag=mt.selected,tag=mt.pet,limit=1] at @s anchored eyes positioned ^ ^ ^3 positioned ~ ~ ~ run function mobtamer:sys/player/item/conductor/use/info/01 