function mobtamer:sys/schedule/apple/target

execute store result score $mt.target mt.max_health run attribute @s generic.max_health base get 0.5
execute store result entity @s Health float 1 run attribute @s generic.max_health base get
scoreboard players add $mt.target mt.max_health 1000
execute store result entity @s AbsorptionAmount float 1 run scoreboard players get $mt.target mt.max_health
scoreboard players reset $mt.target mt.max_health

scoreboard players set @s mt.score 2400
