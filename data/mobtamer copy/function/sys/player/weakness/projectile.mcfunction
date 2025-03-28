execute on origin unless entity @s[type=player,tag=mt.player_check] run return 1
tag @s add mt.projectile_check
execute store result entity @s damage double 0.1 run data get entity @s damage
execute if entity @s[type=trident] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]