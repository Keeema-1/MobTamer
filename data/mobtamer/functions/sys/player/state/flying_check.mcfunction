
tag @s remove mt.flying

execute if data storage mobtamer:temp data.player{OnGround:1b} run scoreboard players set $mt.fly_check.return mt.score 1
execute unless block ~ ~-1 ~ #mobtamer:space run scoreboard players set $mt.fly_check.return mt.score 1
execute unless block ~ ~-2 ~ #mobtamer:space run scoreboard players set $mt.fly_check.return mt.score 1

execute unless score $mt.fly_check.return mt.score matches 1 if entity @s[gamemode=adventure] unless data storage mobtamer:temp data.player.Inventory[{Slot:102b,id:"minecraft:elytra"}] run scoreboard players set $mt.fly_check.return mt.score 1
execute unless score $mt.fly_check.return mt.score matches 1 if entity @s[gamemode=survival] unless data storage mobtamer:temp data.player.Inventory[{Slot:102b,id:"minecraft:elytra"}] run scoreboard players set $mt.fly_check.return mt.score 1

tag @s add mt.flying
scoreboard players reset $mt.fly_check.return mt.score
