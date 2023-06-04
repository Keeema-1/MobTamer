execute on origin run scoreboard players operation $mt.player mt.id = @s mt.id

execute as @e[type=#mobtamer:can_tame,tag=!mt.pet,tag=!mt.chance,dx=0,dy=0,dz=0,sort=nearest,limit=1] run function mobtamer:sys/schedule/apple/target

execute store result entity @s Item.Count byte 0.99 run data get entity @s Item.Count

scoreboard players reset $mt.player mt.id