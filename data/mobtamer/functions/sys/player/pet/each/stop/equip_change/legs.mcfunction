
data modify entity @s Item set from entity @e[team=mt.common,tag=mt.pet_check,tag=mt.pet,limit=1] ArmorItems[1]

data modify entity @s Item.tag.Unbreakable set value 0b

execute unless data entity @e[team=mt.common,tag=mt.pet_check,tag=mt.pet,limit=1] ArmorItems[1].id run kill @s

data modify entity @e[team=mt.common,tag=mt.pet_check,tag=mt.pet,limit=1] ArmorItems[1] set from storage mobtamer:temp data.Item
