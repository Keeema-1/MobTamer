
execute store result score $mt.pos.from.y mt.score run data get storage mobtamer:temp data.pet.Pos[1] 100

execute store result score $mt.pos.to.y mt.score run data get storage mobtamer:temp data.player.Pos[1] 100

scoreboard players operation $mt.pos.to.y mt.score -= $mt.pos.from.y mt.score

execute store result storage mobtamer:temp data.pet.Motion[1] double 0.0003 run scoreboard players get $mt.pos.to.y mt.score
