# execute unless data entity @s ArmorItems[3].count run item replace entity @s armor.head with leather_helmet{attribute_modifiers:{modifiers:[{type:"generic.armor",name:"",slot:"head"}]}}
execute unless data entity @s ArmorItems[3].count run loot replace entity @s armor.head loot mobtamer:item/helmet_armor_zero
data modify entity @s ArmorItems[3].components.Unbreakable set value 1b