summon creeper
data modify entity @e[team=,type=creeper,tag=!mt.pet,sort=nearest,distance=..8,limit=1] powered set value 1b
execute as @e[team=,type=creeper,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
