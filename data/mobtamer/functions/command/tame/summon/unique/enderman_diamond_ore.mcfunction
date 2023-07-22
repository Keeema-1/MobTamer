summon enderman
data modify entity @e[team=,type=enderman,tag=!mt.pet,sort=nearest,distance=..8,limit=1] carriedBlockState set value {Name:"diamond_ore"}
execute as @e[team=,type=enderman,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
