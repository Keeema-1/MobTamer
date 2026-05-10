execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#mobtamer:can_tame,tag=!mt.pet,tag=!mt.chance,dx=0,dy=0,dz=0] run return run function mobtamer:sys/func/tame/golden_apple/tick/0000
schedule function mobtamer:sys/func/tame/golden_apple/tick/0 1t replace
