
scoreboard players set @e[team=!,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1] mt.hostile_interval 0

damage @s 6 mob_attack by @e[team=!,type=guardian,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1]

damage @s 8 mob_attack by @e[team=!,type=elder_guardian,tag=mt.pet_check,tag=mt.pet,distance=..10,limit=1]
