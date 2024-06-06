
execute as @e[team=!,type=phantom,tag=mt.pet_check,tag=mt.pet,limit=1] run function mobtamer:sys/common/pet/attack/src

execute if data entity @s {HurtTime:0s} unless data entity @s {Health:0.0f} run function mobtamer:sys/common/pet/attack/dst

scoreboard players set @e[team=!,type=phantom,tag=mt.pet_check,tag=mt.pet,limit=1] mt.hostile_interval 80
