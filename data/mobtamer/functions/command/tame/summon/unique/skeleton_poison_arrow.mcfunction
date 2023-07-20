summon skeleton
item replace entity @e[team=,type=skeleton,tag=!mt.pet,sort=nearest,distance=..8,limit=1] weapon.offhand with tipped_arrow{Potion:"poison"} 64
execute as @e[team=,type=skeleton,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
