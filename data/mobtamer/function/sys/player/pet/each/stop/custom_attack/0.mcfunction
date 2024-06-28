
# execute if entity @e[team=!,type=#mobtamer:custom_attack/can_be,tag=mt.pet_check,tag=!mt.custom_attack,tag=mt.pet,limit=1] store result entity @s Item.count byte 0.9999 run data get entity @s Item.count
execute if entity @e[team=!,type=#mobtamer:custom_attack/can_be,tag=mt.pet_check,tag=!mt.custom_attack,tag=mt.pet,limit=1] run item modify entity @s container.0 mobtamer:remove_count

execute as @e[team=!,type=#mobtamer:custom_attack/can_be,tag=mt.pet_check,tag=!mt.custom_attack,tag=mt.pet,limit=1] run function mobtamer:sys/player/pet/each/stop/custom_attack/00
