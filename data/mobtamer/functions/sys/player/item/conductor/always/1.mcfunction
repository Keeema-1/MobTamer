
execute as @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.down] run data remove entity @s Glowing
execute as @e[team=mt.common,tag=mt.player_check,tag=mt.pet,sort=nearest,limit=1] run data modify entity @s Glowing set value 1b
