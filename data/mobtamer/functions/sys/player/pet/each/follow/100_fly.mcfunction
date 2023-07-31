
execute store result score $mt.pos.from.y mt.score run data get storage mobtamer:temp data.pet.Pos[1] 100

execute store result score $mt.pos.to.y mt.score run data get storage mobtamer:temp data.player.Pos[1] 100

scoreboard players operation $mt.pos.to.y mt.score -= $mt.pos.from.y mt.score

execute if entity @s[type=ghast] run scoreboard players add $mt.pos.to.y mt.score 700
execute if entity @s[type=phantom] run scoreboard players add $mt.pos.to.y mt.score 300

# execute if entity @s[type=ender_dragon] if score $mt.pos.to.y mt.score matches ..-50 at @s run tp @s ~ ~-0.3 ~
# execute if entity @s[type=ender_dragon] if score $mt.pos.to.y mt.score matches 50.. at @s run tp @s ~ ~0.3 ~
execute if entity @s[type=ender_dragon] positioned as @s positioned ~ ~-6 ~ facing entity @a[tag=mt.player_check,limit=1] eyes positioned as @s run tp ^ ^ ^0.3

execute store result storage mobtamer:temp data.pet.Motion[1] double 0.0003 run scoreboard players get $mt.pos.to.y mt.score

execute if entity @s[type=ghast] store result storage mobtamer:temp data.pet.Motion[0] double 0.00012 run scoreboard players get $mt.pos.to.x mt.score
execute if entity @s[type=ghast] store result storage mobtamer:temp data.pet.Motion[1] double 0.00012 run scoreboard players get $mt.pos.to.y mt.score
execute if entity @s[type=ghast] store result storage mobtamer:temp data.pet.Motion[2] double 0.00012 run scoreboard players get $mt.pos.to.z mt.score
