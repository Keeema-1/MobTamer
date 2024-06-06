summon phantom
data merge entity @e[team=,type=phantom,tag=!mt.pet,sort=nearest,distance=..8,limit=1] {Size:10}
execute as @e[team=,type=phantom,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
