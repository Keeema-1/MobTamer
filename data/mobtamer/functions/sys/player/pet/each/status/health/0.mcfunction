
execute store result score $mt.damage mt.health run data get storage mobtamer:temp data.pet.Health 100
execute unless score @s mt.health_nbt matches 1.. run scoreboard players operation @s mt.health_nbt = $mt.damage mt.health
scoreboard players operation $mt.damage mt.health -= @s mt.health_nbt
# title @a actionbar [{"score":{"name":"$mt.damage","objective":"mt.health"}}]
# execute unless score $mt.damage mt.health matches 0 run tellraw @a [{"score":{"name":"$mt.damage","objective":"mt.health"}}]

execute store result score @s mt.health_nbt run data get storage mobtamer:temp data.pet.Health 100

scoreboard players operation @s mt.health += $mt.damage mt.health

execute if score @s mt.health_nbt matches ..9000 run data modify entity @s Health set value 100.0f
execute if score @s mt.health_nbt matches ..9000 run scoreboard players set @s mt.health_nbt 10000

execute unless entity @s[type=wither] unless entity @s[tag=mt.targeting] if score @s mt.health < @s mt.max_health run scoreboard players add @s mt.health 2
execute if score @s mt.health > @s mt.max_health run scoreboard players operation @s mt.health = @s mt.max_health

execute unless score @s mt.health matches 1.. run function mobtamer:sys/player/pet/each/down/down/0

scoreboard players reset $mt.damage mt.max_health
scoreboard players reset $mt.damage mt.health
