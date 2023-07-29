tag @s add mt.display_exist

data modify storage mobtamer:temp data.pet.Pos set from entity @s Pos
data modify storage mobtamer:temp data.pet.Motion set from entity @s Motion

scoreboard players operation $mt.pet mt.health = @s mt.health
scoreboard players operation $mt.pet mt.max_health = @s mt.max_health

execute unless score $mt.pet mt.health >= $mt.pet mt.max_health run data modify storage mobtamer:temp data.pet.state merge value {not_full:1b}
execute if predicate mobtamer:targeting run data modify storage mobtamer:temp data.pet.state merge value {targeting:1b}
execute if entity @s[tag=mt.stop] run data modify storage mobtamer:temp data.pet.state merge value {stop:1b}
execute if entity @s[tag=mt.down] run data modify storage mobtamer:temp data.pet.state merge value {down:1b}

scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.pet mt.health /= $mt.const mt.score
scoreboard players operation $mt.pet mt.max_health /= $mt.const mt.score

scoreboard players set $mt.health.color mt.score 0
scoreboard players set $mt.const mt.score 2
scoreboard players operation $mt.border mt.score = $mt.pet mt.max_health
scoreboard players operation $mt.border mt.score /= $mt.const mt.score
execute if score $mt.border mt.score matches 21.. run scoreboard players set $mt.border mt.score 20
execute if score $mt.pet mt.health <= $mt.border mt.score run scoreboard players set $mt.health.color mt.score 1
scoreboard players set $mt.const mt.score 2
scoreboard players operation $mt.border mt.score /= $mt.const mt.score
execute if score $mt.pet mt.health <= $mt.border mt.score run scoreboard players set $mt.health.color mt.score 2

tag @s remove mt.health.yellow
tag @s remove mt.health.red
execute if score $mt.health.color mt.score matches 1 run tag @s add mt.health.yellow
execute if score $mt.health.color mt.score matches 2 run tag @s add mt.health.red

scoreboard players reset $mt.border mt.score
