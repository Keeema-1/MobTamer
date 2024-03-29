tag @s add mt.following

execute if entity @s[type=!#mobtamer:breathe_underwater,type=!strider] if data storage mobtamer:temp data.pet{OnGround:1b} unless block ~ ~ ~ #mobtamer:space run data modify storage mobtamer:temp data.pet.Motion[1] set value 0.37
execute if entity @s[type=strider] if data storage mobtamer:temp data.pet{OnGround:1b} unless block ~ ~ ~ #mobtamer:space unless block ~ ~ ~ lava run data modify storage mobtamer:temp data.pet.Motion[1] set value 0.37
execute if entity @s[type=#mobtamer:breathe_underwater] if data storage mobtamer:temp data.pet{OnGround:1b} unless block ~ ~ ~ #mobtamer:space run data modify storage mobtamer:temp data.pet.Motion[1] set value 0.2
#particle end_rod ~ ~ ~ 0 0 0 0 1

execute store result score $mt.pos.from.x mt.score run data get storage mobtamer:temp data.pet.Pos[0] 100
execute store result score $mt.pos.from.z mt.score run data get storage mobtamer:temp data.pet.Pos[2] 100

execute store result score $mt.pos.to.x mt.score run data get storage mobtamer:temp data.player.Pos[0] 100
execute store result score $mt.pos.to.z mt.score run data get storage mobtamer:temp data.player.Pos[2] 100

scoreboard players operation $mt.pos.to.x mt.score -= $mt.pos.from.x mt.score
scoreboard players operation $mt.pos.to.z mt.score -= $mt.pos.from.z mt.score

execute store result storage mobtamer:temp data.pet.Motion[0] double 0.0003 run scoreboard players get $mt.pos.to.x mt.score
execute store result storage mobtamer:temp data.pet.Motion[2] double 0.0003 run scoreboard players get $mt.pos.to.z mt.score

execute if entity @s[type=#mobtamer:can_fly] run function mobtamer:sys/player/pet/each/follow/100_fly
execute if entity @s[type=#mobtamer:can_swim] if predicate mobtamer:location_water run function mobtamer:sys/player/pet/each/follow/100_fly

data modify entity @s Motion set from storage mobtamer:temp data.pet.Motion

scoreboard players reset $mt.pos.from.x mt.score
scoreboard players reset $mt.pos.from.z mt.score
scoreboard players reset $mt.pos.to.x mt.score
scoreboard players reset $mt.pos.to.z mt.score

scoreboard players reset $mt.pos.from.y mt.score
scoreboard players reset $mt.pos.to.y mt.score
