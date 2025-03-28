
forceload add 0 0

execute positioned 0. 0. 0. summon marker run function mobtamer:sys/player/pet/each/unique/custom_attack/rot2vec
execute if data storage mobtamer:temp data.pet{OnGround:1b} run tp ^ ^ ^

execute store result score $mt.speed mt.score run attribute @s generic.movement_speed get 100
execute store result score $mt.dx mt.score run data get storage mobtamer:temp data.rot2vec.Pos[0] 100
execute store result score $mt.dy mt.score run data get storage mobtamer:temp data.rot2vec.Pos[1] 100
execute store result score $mt.dz mt.score run data get storage mobtamer:temp data.rot2vec.Pos[2] 100
scoreboard players operation $mt.dx mt.score *= $mt.speed mt.score
scoreboard players operation $mt.dy mt.score *= $mt.speed mt.score
scoreboard players operation $mt.dz mt.score *= $mt.speed mt.score

execute store result storage mobtamer:temp data.rot2vec.Pos[0] double 0.00004 run scoreboard players get $mt.dx mt.score
execute store result storage mobtamer:temp data.rot2vec.Pos[1] double 0.00004 run scoreboard players get $mt.dy mt.score
execute store result storage mobtamer:temp data.rot2vec.Pos[2] double 0.00004 run scoreboard players get $mt.dz mt.score

data modify entity @s Motion[0] set from storage mobtamer:temp data.rot2vec.Pos[0]
data modify entity @s Motion[2] set from storage mobtamer:temp data.rot2vec.Pos[2]

# execute if entity @s[type=#mobtamer:can_fly] run data modify entity @s Motion[1] set from storage mobtamer:temp data.rot2vec.Pos[1]

scoreboard players reset $mt.dx mt.score
scoreboard players reset $mt.dy mt.score
scoreboard players reset $mt.dz mt.score
scoreboard players reset $mt.speed mt.score
