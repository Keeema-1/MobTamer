summon rabbit
data merge entity @e[team=,type=rabbit,tag=!mt.pet,sort=nearest,distance=..8,limit=1] {RabbitType:99}
execute as @e[team=,type=rabbit,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
