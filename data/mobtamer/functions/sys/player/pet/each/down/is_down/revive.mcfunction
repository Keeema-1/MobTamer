
execute on passengers if entity @s[type=text_display] run kill @s

tag @s remove mt.down

# execute store result entity @s Health float 1 run attribute @s generic.max_health base get
data modify entity @s Health set value 100
execute store result score @s mt.health_nbt run data get entity @s Health 100
scoreboard players set @s mt.health 1000
effect clear @s invisibility
effect give @s fire_resistance 3 0 false
data merge entity @s {Glowing:0b,NoAI:0b,Invulnerable:0b,Silent:0b}

scoreboard players reset @s mt.timer1

particle minecraft:happy_villager ~ ~1 ~ 0.5 0.9 0.5 1 10
execute as @a[tag=mt.player_check] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1
#particle totem_of_undying 
