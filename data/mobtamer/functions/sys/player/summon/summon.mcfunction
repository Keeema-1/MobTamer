scoreboard players operation @s mt.id = $mt.player mt.id
tag @s remove mt.was_stored
team join mt.common @s

execute as @e[team=mt.common,type=#mobtamer:can_tame,tag=mt.pet] if score @s mt.id = $mt.player mt.id at @s run tag @s add mt.player_check

execute store result score @s mt.max_health run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 100
scoreboard players remove @s mt.max_health 100000
execute store result score @s mt.health run data get entity @s Health
execute store result entity @s Health float 1 run attribute @s generic.max_health base get

function mobtamer:sys/player/summon/slot/0
scoreboard players operation @s mt.slot = $mt.new mt.slot
execute if score @s mt.slot <= $mt.sys mt.slot run tellraw @a [{"text": "Slot: "},{"score":{"name": "$mt.new","objective": "mt.slot"}}]
execute unless score @s mt.slot <= $mt.sys mt.slot run tellraw @a [{"text": "Slotがすべて埋まっていたため、アイテム化されました。"}]
execute unless score @s mt.slot <= $mt.sys mt.slot run function mobtamer:sys/player/pet/each/store/0
scoreboard players reset $mt.new mt.slot

execute if entity @s[tag=mt.down] run function mobtamer:sys/player/pet/each/down/down/0

tag @e[team=mt.common,type=#mobtamer:can_tame,tag=player_check,tag=mt.pet] remove mt.player_check
