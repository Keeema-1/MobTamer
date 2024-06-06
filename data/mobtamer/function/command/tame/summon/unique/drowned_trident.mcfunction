summon drowned
item replace entity @e[team=,type=drowned,tag=!mt.pet,sort=nearest,distance=..8,limit=1] weapon.mainhand with trident
execute as @e[team=,type=drowned,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
