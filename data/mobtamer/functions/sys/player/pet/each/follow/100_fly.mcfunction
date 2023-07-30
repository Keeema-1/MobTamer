
execute store result score $mt.pos.from.y mt.score run data get storage mobtamer:temp data.pet.Pos[1] 100

execute store result score $mt.pos.to.y mt.score run data get storage mobtamer:temp data.player.Pos[1] 100

scoreboard players operation $mt.pos.to.y mt.score -= $mt.pos.from.y mt.score

execute if entity @s[type=ender_dragon] run scoreboard players add $mt.pos.to.y mt.score 600
execute if entity @s[type=ender_dragon] if score $mt.pos.to.y mt.score matches ..-50 at @s run tp @s ~ ~-0.3 ~
execute if entity @s[type=ender_dragon] if score $mt.pos.to.y mt.score matches 50.. at @s run tp @s ~ ~0.3 ~

execute store result storage mobtamer:temp data.pet.Motion[1] double 0.0003 run scoreboard players get $mt.pos.to.y mt.score
