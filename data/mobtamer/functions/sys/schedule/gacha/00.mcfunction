
execute if data entity @s Item.tag{mt_gacha_type:"bronze"} run function mobtamer:sys/common/gacha/only_already_tamed/bronze
execute if data entity @s Item.tag{mt_gacha_type:"silver"} run function mobtamer:sys/common/gacha/only_already_tamed/silver
execute if data entity @s Item.tag{mt_gacha_type:"gold"} run function mobtamer:sys/common/gacha/only_already_tamed/gold


tp ~ ~1 ~
execute store result entity @s Item.Count byte 0.9999 run data get entity @s Item.Count
