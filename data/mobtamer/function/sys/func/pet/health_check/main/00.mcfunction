
execute store result score #mt.damage mt.temp run data get storage mobtamer:temp data.pet.Health 100
execute unless score @s mt.health_nbt matches 1.. run scoreboard players operation @s mt.health_nbt = #mt.damage mt.temp
# execute unless score #mt.damage mt.temp matches 0 run tellraw @a [{"text":"Health nbt1: "},{"score":{"name":"#mt.damage","objective":"mt.temp"}}]
scoreboard players operation #mt.damage mt.temp -= @s mt.health_nbt
# title @a actionbar [{"score":{"name":"#mt.damage","objective":"mt.temp"}}]
# execute unless score #mt.damage mt.temp matches 0 run tellraw @a [{"text":"Health nbt2: "},{"score":{"name":"#mt.damage","objective":"mt.temp"}}]
# tellraw @a [{"text":"Health nbt2: "},{"score":{"name":"#mt.damage","objective":"mt.temp"}}]
# tellraw @a [{"text":"max_health: "},{"score":{"name":"@s","objective":"mt.max_health"}}]
# tellraw @a [{"text":"Health: "},{"entity":"@s","nbt": "Health"}]

execute store result score @s mt.health_nbt run data get storage mobtamer:temp data.pet.Health 100

scoreboard players operation @s mt.health += #mt.damage mt.temp

execute if score @s mt.health_nbt matches ..9000 run data modify entity @s Health set value 100.0f
execute if score @s mt.health_nbt matches ..9000 run scoreboard players set @s mt.health_nbt 10000

execute unless entity @s[type=wither] unless entity @s[tag=mt.targeting] if score @s mt.health < @s mt.max_health run scoreboard players add @s mt.health 2
execute if score @s mt.health > @s mt.max_health run scoreboard players operation @s mt.health = @s mt.max_health

execute unless score @s mt.health matches 1.. run function mobtamer:sys/func/pet/health_check/main/down

scoreboard players reset #mt.damage mt.max_health
scoreboard players reset #mt.damage mt.temp
