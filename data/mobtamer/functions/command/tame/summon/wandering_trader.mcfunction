summon wandering_trader
execute as @e[team=!mt.common,type=wandering_trader,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
