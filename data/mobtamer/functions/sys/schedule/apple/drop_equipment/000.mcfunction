data modify entity @s Item merge from storage mobtamer:temp data.target.DropItem
tag @s remove mt.new
execute if data entity @s Item{id:"minecraft:stick"} run kill @s
