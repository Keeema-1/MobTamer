scoreboard players operation @s mt.id = $mt.player mt.id
tag @s remove mt.was_stored
team join mt.common @s

execute on passengers run data merge entity @s {DeathLootTable:"empty",Health:0.0f,Silent:1b}

execute as @e[team=mt.common,type=#mobtamer:can_tame,tag=mt.pet] if score @s mt.id = $mt.player mt.id at @s run tag @s add mt.player_check

execute store result score @s mt.max_health run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 100
scoreboard players remove @s mt.max_health 10000
execute store result score @s mt.health run data get entity @s Health 100
execute store result entity @s Health float 1 run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 1
# tellraw @a [{"text":"score health: "},{"score":{"name": "@s","objective": "mt.health"}}]

# xp
execute store result score @s mt.xp run data get entity @s PortalCooldown
tellraw @a [{"text": "xp: "},{"score":{"name": "@s","objective": "mt.xp"}}]

function mobtamer:sys/player/summon/slot/0
scoreboard players operation @s mt.slot = $mt.new mt.slot
execute if score @s mt.slot <= $mt.sys mt.slot run tellraw @a [{"text": "Slot: "},{"score":{"name": "$mt.new","objective": "mt.slot"}}]
execute unless score @s mt.slot <= $mt.sys mt.slot run tellraw @a [{"text": "Slotがすべて埋まっていたため、アイテム化されました。"}]
execute unless score @s mt.slot <= $mt.sys mt.slot run function mobtamer:sys/player/pet/each/store/0
scoreboard players reset $mt.new mt.slot

execute if entity @s[type=phantom] run effect give @s fire_resistance infinite 1 true
execute if entity @s[type=#mobtamer:slimes] run effect give @s weakness infinite 10 true
execute if entity @s[type=fox] run data modify entity @s Trusted append from entity @a[tag=mt.player_check,limit=1] UUID
execute if entity @s[type=fox] run data modify entity @s Trusted append from entity @a[tag=mt.player_check,limit=1] UUID
execute if data entity @s Owner run data modify entity @s Owner set from entity @a[tag=mt.player_check,limit=1] UUID

tag @s add mt.pet_check
execute if entity @s[tag=mt.down] run function mobtamer:sys/player/pet/each/down/down/0

tag @e[team=mt.common,type=#mobtamer:can_tame,tag=player_check,tag=mt.pet] remove mt.player_check
tag @s remove mt.pet_check

