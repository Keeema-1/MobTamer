
execute store result score $mt.target mt.health run data get entity @s AbsorptionAmount

scoreboard players remove @s mt.score 1

execute unless score @s mt.score matches 1.. run function mobtamer:sys/schedule/chance/end

execute if score @s mt.score matches 1.. unless score $mt.target mt.health matches 1000.. run function mobtamer:sys/schedule/chance/tame_success

scoreboard players reset $mt.target mt.health

particle minecraft:entity_effect ~ ~0.5 ~ 0.2 0.2 0.2 1 1
#execute if score $mt.target mt.score matches 1.. run schedule function mobtamer:sys/schedule/chance/0 1t replace

execute unless data storage mobtamer:settings data.weakness run data remove storage mobtamer:temp hold.weakness_challenge
execute if data storage mobtamer:settings data{weakness:"never"} run data remove storage mobtamer:temp hold.weakness_challenge

execute on attacker unless entity @s[type=pufferfish] run data remove storage mobtamer:temp hold.only_pufferfish
execute if data storage mobtamer:temp hold{only_pufferfish:1b} on attacker if entity @s[type=pufferfish] run data modify storage mobtamer:temp hold.only_pufferfish set value 2b
