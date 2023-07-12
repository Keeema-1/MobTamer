summon wither_skeleton
item replace entity @e[team=!mt.common,type=wither_skeleton,tag=!mt.pet,sort=nearest,distance=..8,limit=1] weapon.mainhand with bow
execute as @e[team=!mt.common,type=wither_skeleton,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
