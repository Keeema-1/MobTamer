summon pillager
item replace entity @e[team=!mt.common,type=pillager,tag=!mt.pet,sort=nearest,distance=..8,limit=1] weapon.offhand with firework_rocket{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;11743532]}]}} 64
execute as @e[team=!mt.common,type=pillager,tag=!mt.pet,sort=nearest,distance=..8,limit=1] run function mobtamer:sys/common/summon/tame
