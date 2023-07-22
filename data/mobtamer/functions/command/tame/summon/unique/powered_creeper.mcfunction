summon creeper
data modify entity @e[team=,type=creeper,tag=!mt.pet,sort=nearest,distance=..8,limit=1] powered set value 1b
tag @e[team=,type=creeper,tag=!mt.pet,sort=nearest,distance=..8,limit=1] add mt.gacha.powered_creeper
execute as @e[team=,type=creeper,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
