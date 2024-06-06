
execute if data entity @s {Health:0.0f} run return 1

scoreboard players set $mt.exist_target_record_entity mt.score 1

execute if score $mt.return mt.score matches 1 run return 1

execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] at @e[team=!,tag=mt.pet_check,limit=1] facing entity @s feet as @e[team=!,tag=mt.pet_check,limit=1] unless score @s mt.hostile_interval matches 20.. if data entity @s {HurtTime:0s} run function mobtamer:sys/player/pet/each/unique/custom_attack/000
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=1,dz=0] as @e[team=!,tag=mt.pet_check,limit=1] unless score @s mt.hostile_interval matches 1.. run function mobtamer:sys/player/pet/each/unique/custom_attack/001
