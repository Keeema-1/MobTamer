
execute unless data entity @s {Health:0.0f} positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 facing entity @s feet as @e[team=!,tag=mt.pet_check,limit=1] unless score @s mt.hostile_interval matches 20.. if data entity @s {HurtTime:0s} run function mobtamer:sys/player/pet/each/unique/custom_attack_on_target/000
execute unless data entity @s {Health:0.0f} positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 as @e[team=!,tag=mt.pet_check,limit=1] unless score @s mt.hostile_interval matches 1.. run function mobtamer:sys/player/pet/each/unique/custom_attack_on_target/001

data remove storage mobtamer:temp data.rot2vec
