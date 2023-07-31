
execute store result score $mt.attack_damage mt.score run attribute @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1] generic.attack_damage get

execute if score $mt.attack_damage mt.score matches 1 run damage @s 1 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 2 run damage @s 2 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 3 run damage @s 3 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 4 run damage @s 4 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 5 run damage @s 5 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 6 run damage @s 6 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 7 run damage @s 7 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 8 run damage @s 8 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 9 run damage @s 9 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.attack_damage mt.score matches 10.. run damage @s 10 mob_attack by @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1]

scoreboard players set @e[team=!,type=#mobtamer:slimes,tag=mt.pet_check,tag=mt.pet,limit=1] mt.hostile_interval 30

scoreboard players reset $mt.attack_damage mt.score
