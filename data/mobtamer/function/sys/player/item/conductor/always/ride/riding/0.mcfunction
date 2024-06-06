
# execute if data storage mobtamer:temp data.player{Motion:[0.0d,-0.0784000015258789d,0.0d]} on vehicle if entity @s[team=!,tag=mt.player_check,nbt={OnGround:1b}] positioned as @s run tp @s ~ ~ ~
execute unless data storage mobtamer:temp data.player{Motion:[0.0d,-0.0784000015258789d,0.0d]} run function mobtamer:sys/player/item/conductor/always/ride/riding/move/0

execute if entity @s[type=ender_dragon] if data storage mobtamer:temp data.player{Motion:[0.0d,-0.0784000015258789d,0.0d]} run data modify entity @s DragonPhase set value 6
