
execute if data entity @s Item.components."minecraft:custom_data"{mt_gacha_type:"bronze"} run function mobtamer:sys/common/gacha/only_already_tamed/bronze
execute if data entity @s Item.components."minecraft:custom_data"{mt_gacha_type:"silver"} run function mobtamer:sys/common/gacha/only_already_tamed/silver
execute if data entity @s Item.components."minecraft:custom_data"{mt_gacha_type:"gold"} run function mobtamer:sys/common/gacha/only_already_tamed/gold
execute if data entity @s Item.components."minecraft:custom_data"{mt_gacha_type:"diamond"} run function mobtamer:sys/common/gacha/any/diamond

execute on origin run scoreboard players operation $mt.pet.id mt.score = @s mt.id

execute as @e[tag=mt.chance,tag=mt.success,scores={mt.score=40},distance=..1] unless score @s mt.id matches -2147483648..2147483647 run scoreboard players operation @s mt.id = $mt.pet.id mt.score

scoreboard players reset $mt.pet.id mt.score

tp ~ ~1 ~
execute store result entity @s Item.Count byte 0.9999 run data get entity @s Item.Count
