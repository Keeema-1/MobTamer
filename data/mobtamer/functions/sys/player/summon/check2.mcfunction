scoreboard players operation @s mt.id = $mt.player mt.id
tag @s remove mt.was_stored
team join mt.common @s

execute on passengers run data merge entity @s {DeathLootTable:"empty",Health:0.0f,Silent:1b}

execute as @e[team=mt.common,type=#mobtamer:can_tame,tag=mt.pet] if score @s mt.id = $mt.player mt.id at @s run tag @s add mt.player_check

# execute store result score @s mt.max_health run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 100
execute store result score @s mt.max_health run attribute @s generic.max_health get 100
scoreboard players remove @s mt.max_health 10000
execute store result score @s mt.health run data get entity @s Health 100
# execute store result entity @s Health float 1 run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 1
execute store result entity @s Health float 1 run attribute @s generic.max_health get 100
# tellraw @a [{"text":"score health: "},{"score":{"name": "@s","objective": "mt.health"}}]

# xp
execute store result score @s mt.xp run data get entity @s PortalCooldown
# tellraw @a [{"text": "xp: "},{"score":{"name": "@s","objective": "mt.xp"}}]

function mobtamer:sys/common/pet/status/all
execute store result score @s mt.cost run data get storage mobtamer:temp data.pet_status.cost.value
scoreboard players operation $mt.cost.sum mt.score = @s mt.cost

function mobtamer:sys/player/summon/check3

scoreboard players reset $mt.new mt.slot
scoreboard players reset $mt.cost.sum mt.slot

data remove storage mobtamer:temp data.pet_status

tag @e[team=mt.common,type=#mobtamer:can_tame,tag=player_check,tag=mt.pet] remove mt.player_check

