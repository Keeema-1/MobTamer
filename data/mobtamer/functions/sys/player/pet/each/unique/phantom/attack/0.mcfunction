
scoreboard players set $mt.attack_flag mt.score 1

execute at @s on passengers if entity @s[tag=mt.target_record_entity] on origin facing entity @s feet as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] run tp @s ^ ^ ^ ~ ~-60

execute anchored eyes at @s on passengers if entity @s[tag=mt.target_record_entity] on origin facing entity @s feet as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] run function mobtamer:sys/player/pet/each/unique/phantom/attack/00

execute at @s positioned ~-1 ~0.5 ~-1 on passengers if entity @s[tag=mt.target_record_entity] on origin if entity @s[dx=1,dy=0,dz=1] run function mobtamer:sys/player/pet/each/unique/phantom/attack/01
