
# function mobtamer:sys/tame/success/advancement/0

# data merge entity @s {Tags:["mt.pet"],AbsorptionAmount:0f,PersistenceRequired:1b,CustomNameVisible:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],IsImmuneToZombification:1b}
data merge entity @s {Tags:["mt.pet"],AbsorptionAmount:0f,PersistenceRequired:1b,CustomNameVisible:1b,IsImmuneToZombification:1b}

# execute if data storage mobtamer:settings data{status_variant:1b} run function mobtamer:sys/common/pet/status_variant/give/0

execute store result score @s mt.max_health run attribute @s max_health base get 100
scoreboard players set #mt.health mt.temp 10000
scoreboard players operation #mt.health mt.temp += @s mt.max_health
execute store result entity @s attributes[{id:"minecraft:max_health"}].base double 0.01 run scoreboard players get #mt.health mt.temp
execute store result score #mt.max_health.add mt.temp run attribute @s max_health modifier value get mt.max_health.add 100
execute store result entity @s Health double 0.01 run scoreboard players get #mt.health mt.temp
scoreboard players operation @s mt.max_health += #mt.max_health.add mt.temp
scoreboard players operation @s mt.health = @s mt.max_health
scoreboard players reset #mt.health mt.temp
scoreboard players reset #mt.max_health.add mt.temp

execute if entity @e[type=frog] run attribute @s attack_damage base set 2.0

execute if entity @s[type=#mobtamer:burn_in_the_sun] if entity @s[type=#mobtamer:can_equip/all] run function mobtamer:sys/func/tame/target/tame/helmet

# data modify entity @s ArmorItems[0].components.Unbreakable set value 1b
# data modify entity @s ArmorItems[1].components.Unbreakable set value 1b
# data modify entity @s ArmorItems[2].components.Unbreakable set value 1b
# data modify entity @s ArmorItems[3].components.Unbreakable set value 1b
# data modify entity @s HandItems[0].components.Unbreakable set value 1b
# data modify entity @s HandItems[1].components.Unbreakable set value 1b

function mobtamer:sys/common/get_type_str
data modify entity @s data.mobtamer.entity_id set from storage mobtamer:temp data.type_str

scoreboard players operation #mt.pet.id mt.temp = @s mt.id
execute if data storage mobtamer:settings data{tame_spawn_egg_pos:"player"} as @a if score @s mt.id = #mt.pet.id mt.temp run tag @s add mt.tame_success_player
execute at @a[tag=mt.tame_success_player,limit=1] run function mobtamer:sys/func/pet/store/main/0
execute unless entity @a[tag=mt.tame_success_player,limit=1] run function mobtamer:sys/func/pet/store/main/0
scoreboard players reset #mt.pet.id mt.temp
tag @a remove mt.tame_success_player
