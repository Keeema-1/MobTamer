tag @s add mt.display_exist

data modify storage mobtamer:temp data.pet.Pos set from entity @s Pos
data modify storage mobtamer:temp data.pet.Motion set from entity @s Motion

scoreboard players operation $mt.pet mt.health = @s mt.health
scoreboard players operation $mt.pet mt.max_health = @s mt.max_health

execute unless score $mt.pet mt.health >= $mt.pet mt.max_health run data modify storage mobtamer:temp data.pet.state merge value {not_full:1b}
execute if predicate mobtamer:targeting_not_common_team run data modify storage mobtamer:temp data.pet.state merge value {targeting:1b}
execute if entity @s[tag=mt.stop] run data modify storage mobtamer:temp data.pet.state merge value {stop:1b}
execute if entity @s[tag=mt.down] run data modify storage mobtamer:temp data.pet.state merge value {down:1b}
