execute if entity @e[type=item,tag=mt.egg.power_up,distance=..10,limit=1] run function mobtamer:sys/player/item/conductor/use/power_up/00
execute unless entity @e[type=item,tag=mt.egg.power_up,distance=..10,limit=1] run function mobtamer:sys/player/item/conductor/use/power_up/01
