data modify entity @s FallFlying set value 1b

execute if predicate mobtamer:random/200m run data modify entity @s FallDistance set value 0.0f

execute if entity @a[tag=mt.player_check,tag=mt.flying,limit=1] run data modify entity @s Rotation set from storage mobtamer:temp data.player.Rotation

execute if entity @a[tag=mt.player_check,tag=mt.flying,limit=1] run data modify entity @s Motion[0] set from storage mobtamer:temp data.player.Motion[0]
execute if entity @a[tag=mt.player_check,tag=mt.flying,limit=1] run data modify entity @s Motion[2] set from storage mobtamer:temp data.player.Motion[2]
