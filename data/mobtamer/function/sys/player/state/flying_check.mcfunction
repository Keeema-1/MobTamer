
tag @s remove mt.flying

execute if data storage mobtamer:temp data.player{OnGround:1b} run return 1
execute unless block ~ ~-1 ~ #mobtamer:space run return 1
execute unless block ~ ~-2 ~ #mobtamer:space run return 1

execute if entity @s[gamemode=adventure] unless data storage mobtamer:temp data.player.Inventory[{Slot:102b,id:"minecraft:elytra"}] run return 1
execute if entity @s[gamemode=survival] unless data storage mobtamer:temp data.player.Inventory[{Slot:102b,id:"minecraft:elytra"}] run return 1

tag @s add mt.flying
