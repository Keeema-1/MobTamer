# execute unless data entity @s ArmorItems[3].count run loot replace entity @s armor.head loot mobtamer:item/helmet_armor_zero
# data modify entity @s ArmorItems[3].components.Unbreakable set value 1b

execute unless data entity @s equipment.head.id run loot replace entity @s armor.head loot mobtamer:item/helmet_armor_zero
data modify entity @s equipment.head.components.minecraft:unbreakable set value {}
