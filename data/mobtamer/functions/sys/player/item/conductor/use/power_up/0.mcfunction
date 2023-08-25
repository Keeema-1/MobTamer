execute if entity @e[type=item,tag=mt.egg.power_up,distance=..10,limit=1] if entity @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] run function mobtamer:sys/player/item/conductor/use/power_up/00
execute unless entity @e[type=item,tag=mt.egg.power_up,distance=..10,limit=1] run function mobtamer:sys/player/item/conductor/use/power_up/01
