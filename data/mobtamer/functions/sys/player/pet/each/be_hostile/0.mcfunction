# execute if predicate mobtamer:random/500m unless score $mt.target_flag mt.score matches 1.. unless predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/be_hostile/00
# execute if predicate mobtamer:random/10m if data entity @s {Motion:[0.0d,-0.0784000015258789d,0.0d]} unless score $mt.target_flag mt.score matches 1.. if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/be_hostile/00

execute if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute unless score @s mt.hostile_interval matches 1.. if predicate mobtamer:random/500m unless entity @s[tag=mt.targeting] run function mobtamer:sys/player/pet/each/be_hostile/00

# execute unless score @s mt.hostile_interval matches 1.. if entity @s[tag=!mt.health.yellow] if predicate mobtamer:random/10m if data entity @s {Motion:[0.0d,-0.0784000015258789d,0.0d]} if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/be_hostile/00
