
execute on vehicle run return 1

execute store result score $mt.slime.size mt.score run data get entity @s Size

execute if score $mt.slime.size mt.score matches 1.. if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute if score $mt.slime.size mt.score matches 1.. at @s run function mobtamer:sys/player/pet/each/unique/slime/01
execute if score $mt.slime.size mt.score matches 1.. if entity @s[tag=mt.wasOnGround] unless data storage mobtamer:temp data.pet{OnGround:1b} run tag @s remove mt.wasOnGround
execute if score $mt.slime.size mt.score matches 1.. if entity @s[tag=!mt.wasOnGround] if data storage mobtamer:temp data.pet{OnGround:1b} run function mobtamer:sys/player/pet/each/unique/slime/00

scoreboard players reset $mt.slime.size