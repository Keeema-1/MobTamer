
forceload add 0 0

execute positioned 0. 0. 0. summon marker run function mobtamer:sys/player/pet/each/unique/custom_attack/rot2vec
execute if data storage mobtamer:temp data.pet{OnGround:1b} run tp ^ ^ ^

execute store result score $mt.speed mt.score run attribute @s generic.movement_speed get 100
execute store result score $mt.dx mt.score run data get storage mobtamer:temp data.rot2vec.Pos[0] 100
execute store result score $mt.dz mt.score run data get storage mobtamer:temp data.rot2vec.Pos[2] 100
scoreboard players operation $mt.dx mt.score *= $mt.speed mt.score
scoreboard players operation $mt.dz mt.score *= $mt.speed mt.score

execute store result storage mobtamer:temp data.rot2vec.Pos[0] double 0.0001 run scoreboard players get $mt.dx mt.score
execute store result storage mobtamer:temp data.rot2vec.Pos[2] double 0.0001 run scoreboard players get $mt.dz mt.score

execute if entity @s[type=frog] store result storage mobtamer:temp data.rot2vec.Pos[0] double 0.00002 run scoreboard players get $mt.dx mt.score
execute if entity @s[type=frog] store result storage mobtamer:temp data.rot2vec.Pos[2] double 0.00002 run scoreboard players get $mt.dz mt.score

execute if entity @s[type=#mobtamer:breathe_underwater] store result storage mobtamer:temp data.rot2vec.Pos[0] double 0.00002 run scoreboard players get $mt.dx mt.score
execute if entity @s[type=#mobtamer:breathe_underwater] store result storage mobtamer:temp data.rot2vec.Pos[2] double 0.00002 run scoreboard players get $mt.dz mt.score

data modify entity @s Motion[0] set from storage mobtamer:temp data.rot2vec.Pos[0]
data modify entity @s Motion[2] set from storage mobtamer:temp data.rot2vec.Pos[2]

execute if entity @s[type=!#mobtamer:breathe_underwater] if data storage mobtamer:temp data.pet{OnGround:1b} rotated ~ 0 positioned ^ ^ ^0.5 unless block ^ ^ ^ #mobtamer:space align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=1,dy=0,dz=1] run data modify entity @s Motion[1] set value 0.4d
execute if entity @s[type=!#mobtamer:breathe_underwater] if data storage mobtamer:temp data.pet{OnGround:1b} rotated ~ 0 positioned ^ ^ ^0.5 if block ^ ^ ^ #mobtamer:space positioned ^ ^ ^0.5 unless block ^ ^ ^ #mobtamer:space align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=1,dy=0,dz=1] run data modify entity @s Motion[1] set value 0.4d

execute if entity @s[type=#mobtamer:breathe_underwater] if data storage mobtamer:temp data.pet{OnGround:1b} rotated ~ 0 positioned ^ ^ ^0.5 unless block ^ ^ ^ #mobtamer:space align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=1,dy=0,dz=1] run data modify entity @s Motion[1] set value 0.2d
execute if entity @s[type=#mobtamer:breathe_underwater] if data storage mobtamer:temp data.pet{OnGround:1b} rotated ~ 0 positioned ^ ^ ^0.5 if block ^ ^ ^ #mobtamer:space positioned ^ ^ ^0.5 unless block ^ ^ ^ #mobtamer:space align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=1,dy=0,dz=1] run data modify entity @s Motion[1] set value 0.2d
