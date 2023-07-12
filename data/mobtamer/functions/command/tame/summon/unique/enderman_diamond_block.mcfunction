summon enderman
data modify entity @e[team=!mt.common,type=enderman,tag=!mt.pet,sort=nearest,distance=..8,limit=1] carriedBlockState set value {Name:"diamond_block"}
execute as @e[team=!mt.common,type=enderman,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
