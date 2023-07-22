summon zombie
item replace entity @e[team=,type=zombie,tag=!mt.pet,sort=nearest,distance=..8,limit=1] armor.head with red_mushroom_block
execute as @e[team=,type=zombie,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
