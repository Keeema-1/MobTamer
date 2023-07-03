#execute if data storage mobtamer:temp data.player.SelectedItem.tag.EntityTag run tellraw @a "スポーンエッグ持ってる" 
execute if score @s mt.summon_check_time matches 1.. run scoreboard players remove @s mt.summon_check_time 1

execute unless score @s mt.summon_check_time matches 1.. if data storage mobtamer:temp data.player.SelectedItem.tag.EntityTag{Tags:["mt.pet"]} run scoreboard players set @s mt.summon_check_time 3
execute unless score @s mt.summon_check_time matches 1.. unless score @s mt.summon_check_time matches 3 if data storage mobtamer:temp data.player.Inventory[{Slot:-106b}].tag.EntityTag{Tags:["mt.pet"]} run scoreboard players set @s mt.summon_check_time 3

execute if score @s mt.summon_check_time matches 1.. run function mobtamer:sys/player/summon/check1
