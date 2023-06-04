spreadplayers ~ ~ 4 4 false @s
execute store result score $mt.temp mt.score run data get storage mobtamer:temp data.pet.Pos[1]
execute if score $mt.temp mt.score matches 64.. at @a[tag=mt.player_check,limit=1] run spreadplayers ~ ~ 4 4 under 4 false @s
scoreboard players reset $mt.temp mt.score