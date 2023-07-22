summon skeleton
item replace entity @e[team=,type=skeleton,tag=!mt.pet,sort=nearest,distance=..8,limit=1] armor.head with carved_pumpkin
execute as @e[team=,type=skeleton,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
