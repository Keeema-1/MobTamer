
execute as @e[type=item,tag=!mt.pet_equip_drop_check,distance=..4] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[team=mt.common,tag=mt.pet_check,tag=mt.pet,dx=0,dy=0,dz=0] run function mobtamer:sys/player/pet/each/stop/00
