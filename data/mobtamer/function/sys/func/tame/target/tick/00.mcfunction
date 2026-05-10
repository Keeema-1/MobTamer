
execute store result score #mt.target.health mt.temp run data get entity @s AbsorptionAmount

scoreboard players remove @s mt.score 1

execute unless score @s mt.score matches 1.. run function mobtamer:sys/func/tame/target/fail/0

execute if score @s mt.score matches 1.. unless score #mt.target.health mt.temp matches 1000.. run function mobtamer:sys/func/tame/target/success/0

scoreboard players reset #mt.target.health mt.temp

# particle minecraft:entity_effect ~ ~0.5 ~ 0.2 0.2 0.2 1 1
# particle minecraft:entity_effect{color:[1.0,1.0,1.0,1.0]} ~ ~0.5 ~ 0.2 0.2 0.2 1 1
#execute if score #mt.target mt.score matches 1.. run schedule function mobtamer:sys/schedule/chance/0 1t replace

# execute unless data storage mobtamer:settings data.weakness run data remove storage mobtamer:temp hold.weakness_challenge
# execute if data storage mobtamer:settings data{weakness:"never"} run data remove storage mobtamer:temp hold.weakness_challenge

# execute on attacker unless entity @s[type=pufferfish] run data remove storage mobtamer:temp hold.only_pufferfish
# execute if data storage mobtamer:temp hold{only_pufferfish:1b} on attacker if entity @s[type=pufferfish] run data modify storage mobtamer:temp hold.only_pufferfish set value 2b

# execute if entity @s[type=!vex] anchored eyes at @s unless block ^ ^ ^ #mobtamer:space_and_water run setblock ^ ^ ^ air destroy
# execute at @s if block ~ ~ ~ powder_snow run setblock ~ ~ ~ air destroy

execute store result score #mt.target.fall_distance mt.temp run data get entity @s fall_distance
execute if score #mt.target.fall_distance mt.temp matches 4.. run data modify entity @s fall_distance set value 0.0f
scoreboard players reset #mt.target.fall_distance mt.temp

execute anchored eyes at @s positioned ~-0.5 ~ ~-0.5 as @e[type=falling_block,dx=0,dy=6,dz=0,limit=1] unless data entity @s {FallHurtAmount:0.0f} run data merge entity @s {FallHurtAmount:0.0f,fall_distance:0.0f}

# execute on vehicle if entity @s[type=boat] run function mobtamer:sys/common/dismount_and_drop/0
# execute on vehicle if entity @s[type=minecart] run function mobtamer:sys/common/dismount_and_drop/0
