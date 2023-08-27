tag @s add mt.wasOnGround

execute if score @s mt.hostile_interval matches 1.. run scoreboard players set $mt.slime.return mt.score 1

execute unless score $mt.slime.return mt.score matches 1 run function mobtamer:sys/common/team/same_tag/add

execute unless score $mt.slime.return mt.score matches 1 if score $mt.slime.size mt.score matches 1 positioned ~-1 ~-1 ~-1 as @e[type=#mobtamer:all_mobs,tag=!mt.same_team,dx=1,dy=1,dz=1] if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/slime/000
execute unless score $mt.slime.return mt.score matches 1 if score $mt.slime.size mt.score matches 2 positioned ~-1.5 ~-1 ~-1.5 as @e[type=#mobtamer:all_mobs,tag=!mt.same_team,dx=2,dy=1,dz=2] if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/slime/000
execute unless score $mt.slime.return mt.score matches 1 if score $mt.slime.size mt.score matches 3.. positioned ~-2 ~-1 ~-2 as @e[type=#mobtamer:all_mobs,tag=!mt.same_team,dx=3,dy=1,dz=3] if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/slime/000

execute unless score $mt.slime.return mt.score matches 1 run function mobtamer:sys/common/team/same_tag/remove

scoreboard players reset $mt.slime.return mt.score
