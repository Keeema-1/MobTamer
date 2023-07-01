
data merge entity @s {Silent:1b,DeathLootTable:"empty"}

data modify entity @s ArmorItems set from storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems
data modify entity @s HandItems set from storage mobtamer:temp data.Item.tag.EntityTag.HandItems

item replace entity @s weapon.mainhand with stick
item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/name
item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/health
execute unless score $mt.pet.attack.add.weapon mt.score matches 1.. unless score $mt.pet.attack.add.effect mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack
execute if score $mt.pet.attack.add.weapon mt.score matches 1.. if score $mt.pet.attack.add.effect mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack_add
execute if score $mt.pet.attack.add.weapon mt.score matches 1.. unless score $mt.pet.attack.add.effect mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack_add_weapon
execute unless score $mt.pet.attack.add.weapon mt.score matches 1.. if score $mt.pet.attack.add.effect mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack_add_effect
execute if score $mt.pet.knockback mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/knockback
execute if score $mt.pet.armor mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[3].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/head
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[2].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/chest
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[1].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/legs
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[0].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/feet

# 上でmainhandを塗り替えてしまったのでなんとかする
data modify entity @s ArmorItems[3] set from storage mobtamer:temp data.Item.tag.EntityTag.HandItems[0]
execute if data storage mobtamer:temp data.Item.tag.EntityTag.HandItems[0].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/mainhand
data modify entity @s ArmorItems[3] set from storage mobtamer:temp data.Item.tag.EntityTag.HandItems[0]
execute if data storage mobtamer:temp data.Item.tag.EntityTag.HandItems[1].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/offhand

item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/cost

data modify storage mobtamer:temp data.Item.tag.display set from entity @s HandItems[0].tag.display


kill @s