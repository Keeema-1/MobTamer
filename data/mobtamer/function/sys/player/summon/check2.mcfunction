scoreboard players operation @s mt.id = $mt.player mt.id
tag @s remove mt.was_stored

execute if entity @a[tag=mt.player_check,team=mt.common,limit=1] run team join mt.common @s
execute if entity @a[tag=mt.player_check,team=mt.red,limit=1] run team join mt.red @s
execute if entity @a[tag=mt.player_check,team=mt.blue,limit=1] run team join mt.blue @s
execute if entity @a[tag=mt.player_check,team=mt.green,limit=1] run team join mt.green @s
execute if entity @a[tag=mt.player_check,team=mt.gold,limit=1] run team join mt.gold @s

execute on passengers run data merge entity @s {DeathLootTable:"empty",Health:0.0f,Silent:1b}

execute as @e[team=!,type=#mobtamer:can_tame,tag=mt.pet] if score @s mt.id = $mt.player mt.id at @s run tag @s add mt.player_check

execute store result score @s mt.max_health run attribute @s generic.max_health base get 100
execute store result score $mt.health_modifier mt.score run attribute @s generic.max_health modifier value get mt.max_health.add 100
scoreboard players operation @s mt.max_health += $mt.health_modifier mt.score
scoreboard players reset $mt.health_modifier mt.score
execute if score @s mt.max_health matches 10000.. run scoreboard players remove @s mt.max_health 10000
execute store result score @s mt.health run data get entity @s Health 100
# execute store result entity @s Health float 1 run attribute @s generic.max_health get 100
data modify entity @s Health set value 100.0f

# xp
execute store result score @s mt.xp run data get entity @s PortalCooldown

# execute if entity @s[type=#mobtamer:custom_attack/can_be,tag=mt.custom_attack] run attribute @s generic.attack_damage base set 1
execute if entity @s[type=#mobtamer:custom_attack/can_be,tag=mt.custom_attack] store result score @s mt.attack_damage run data get entity @s TicksFrozen

data modify entity @s TicksFrozen set value 0

function mobtamer:sys/common/pet/status/all
execute store result score @s mt.cost run data get storage mobtamer:temp data.pet_status.cost.value

function mobtamer:sys/player/summon/check3

scoreboard players reset $mt.new mt.slot

data remove storage mobtamer:temp data.pet_status

tag @e[team=!,type=#mobtamer:can_tame,tag=player_check,tag=mt.pet] remove mt.player_check

