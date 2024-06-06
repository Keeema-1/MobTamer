tag @s add mt.wasOnGround

execute if score @s mt.hostile_interval matches 1.. run return 1

function mobtamer:sys/common/team/same_tag/add

execute if score $mt.slime.size mt.score matches 1 positioned ~-1 ~-1 ~-1 as @e[type=#mobtamer:all_mobs,tag=!mt.same_team,dx=1,dy=1,dz=1] if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/slime/000
execute if score $mt.slime.size mt.score matches 2 positioned ~-1.5 ~-1 ~-1.5 as @e[type=#mobtamer:all_mobs,tag=!mt.same_team,dx=2,dy=1,dz=2] if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/slime/000
execute if score $mt.slime.size mt.score matches 3.. positioned ~-2 ~-1 ~-2 as @e[type=#mobtamer:all_mobs,tag=!mt.same_team,dx=3,dy=1,dz=3] if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/slime/000

function mobtamer:sys/common/team/same_tag/remove

# execute if data entity @s {Size:1} positioned ~-1 ~-0.5 ~-1 as @e[]
