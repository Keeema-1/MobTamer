execute on origin run scoreboard players operation $mt.player mt.id = @s mt.id

execute if entity @s[tag=!mt.enchanted_golden_apple] as @e[type=#mobtamer:can_tame,tag=!mt.pet,tag=!mt.chance,dx=0,dy=0,dz=0,sort=nearest,limit=1] run function mobtamer:sys/schedule/apple/target
execute if entity @s[tag=mt.enchanted_golden_apple] as @e[type=#mobtamer:can_tame,tag=!mt.pet,tag=!mt.chance,dx=0,dy=0,dz=0,sort=nearest,limit=1] run function mobtamer:sys/schedule/apple/target_enchanted
execute if data entity @s Item.tag.mt_immediate_tame as @e[type=#mobtamer:can_tame,tag=!mt.pet,tag=mt.chance,dx=0,dy=0,dz=0,sort=nearest,limit=1] run function mobtamer:sys/schedule/apple/immediate

execute store result entity @s Item.Count byte 0.99 run data get entity @s Item.Count

scoreboard players reset $mt.player mt.id