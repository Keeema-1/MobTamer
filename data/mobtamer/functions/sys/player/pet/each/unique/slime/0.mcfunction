
execute on vehicle run scoreboard players set $mt.weakness.return mt.score 1

execute unless score $mt.weakness.return mt.score matches 1 store result score $mt.slime.size mt.score run data get entity @s Size

execute unless score $mt.weakness.return mt.score matches 1 if score $mt.slime.size mt.score matches 1.. if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute unless score $mt.weakness.return mt.score matches 1 if score $mt.slime.size mt.score matches 1.. at @s run function mobtamer:sys/player/pet/each/unique/slime/01
execute unless score $mt.weakness.return mt.score matches 1 if score $mt.slime.size mt.score matches 1.. if entity @s[tag=mt.wasOnGround] unless data storage mobtamer:temp data.pet{OnGround:1b} run tag @s remove mt.wasOnGround
execute unless score $mt.weakness.return mt.score matches 1 if score $mt.slime.size mt.score matches 1.. if entity @s[tag=!mt.wasOnGround] if data storage mobtamer:temp data.pet{OnGround:1b} run function mobtamer:sys/player/pet/each/unique/slime/00

scoreboard players reset $mt.weakness.return mt.score
scoreboard players reset $mt.slime.size