summon zombie
item replace entity @e[team=,type=zombie,tag=!mt.pet,sort=nearest,distance=..8,limit=1] armor.head with azalea
execute as @e[team=,type=zombie,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
