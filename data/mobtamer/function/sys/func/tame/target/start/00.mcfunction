
effect give @s glowing 60 1 true
tag @s add mt.chance
team leave @s

scoreboard players operation @s mt.id = #mt.player_id mt.temp

attribute @s max_absorption base set 2048

execute store result score #mt.target.max_health mt.temp run attribute @s max_health base get
execute store result entity @s Health float 1 run scoreboard players get #mt.target.max_health mt.temp
scoreboard players add #mt.target.max_health mt.temp 1000
execute store result entity @s AbsorptionAmount float 1 run scoreboard players get #mt.target.max_health mt.temp
scoreboard players reset #mt.target.max_health mt.temp

scoreboard players set @s mt.score 1200

# tag @s add mt.here
# execute summon text_display run function mobtamer:sys/schedule/apple/display
# tag @s remove mt.here

data modify entity @s CanPickUpLoot set value 0b

# execute if data storage mobtamer:settings data{equipment_when_tame:"only_initial_equipment"} run function mobtamer:sys/schedule/apple/drop_equipment/0

effect give @s fire_resistance 60 1 true
effect give @s water_breathing 60 1 true
playsound minecraft:entity.fox.eat master @a ~ ~ ~ 1 1

schedule function mobtamer:sys/func/tame/target/tick/0 1t

execute if entity @s[type=creaking] run schedule function mobtamer:sys/func/tame/target/tick/creaking/0 1t

# execute as @a run function mobtamer:sys/player/status_update

# execute if data storage mobtamer:settings data.weakness unless data storage mobtamer:settings data{weakness:"never"} run data modify storage mobtamer:temp hold.weakness_challenge set value 1b
# data modify storage mobtamer:temp hold.only_pufferfish set value 1b
