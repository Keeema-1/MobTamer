execute if score @s mt.summon_check_time matches 1.. run scoreboard players remove @s mt.summon_check_time 1

execute if data storage mobtamer:temp data.player.SelectedItem.tag.EntityTag{Tags:["mt.pet"]} run scoreboard players set @s mt.summon_check_time 3
execute unless score @s mt.summon_check_time matches 3 if data storage mobtamer:temp data.player.Inventory[{Slot:-106b}].tag.EntityTag{Tags:["mt.pet"]} run scoreboard players set @s mt.summon_check_time 3

execute if score @s mt.summon_check_time matches 1.. as @e[type=vindicator,tag=mt.is_illusioner,tag=mt.was_stored,distance=..8,limit=1] at @s run function mobtamer:sys/player/summon/illusioner
execute if score @s mt.summon_check_time matches 1.. as @e[type=zombie,tag=mt.is_giant,tag=mt.was_stored,distance=..8,limit=1] at @s run function mobtamer:sys/player/summon/giant
execute if score @s mt.summon_check_time matches 1.. run function mobtamer:sys/player/summon/check1
execute unless score @s mt.summon_check_time matches 1.. unless entity @a[scores={mt.summon_check_time=1..},distance=..8] if predicate mobtamer:random/100m run function mobtamer:sys/player/summon/check1
