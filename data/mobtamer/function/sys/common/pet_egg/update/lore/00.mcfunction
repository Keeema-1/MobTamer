
data merge entity @s {Silent:1b,DeathLootTable:"empty"}

data modify entity @s ArmorItems set from storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems
data modify entity @s HandItems set from storage mobtamer:temp data.Item.components."minecraft:entity_data".HandItems

item replace entity @s weapon.mainhand with stick
item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/name
execute unless score $mt.pet.max_health.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/health/base
execute if score $mt.pet.max_health.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/health/variant
execute unless score $mt.pet.attack.add.weapon mt.score matches 1.. if score $mt.pet.attack.add.effect mt.score matches 0 unless score $mt.pet.attack.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack/base
execute unless score $mt.pet.attack.add.weapon mt.score matches 1.. if score $mt.pet.attack.add.effect mt.score matches 0 if score $mt.pet.attack.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack/variant
execute if score $mt.pet.attack.add.weapon mt.score matches 1.. if score $mt.pet.attack.add.effect mt.score matches 0 unless score $mt.pet.attack.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack/weapon
execute unless score $mt.pet.attack.add.weapon mt.score matches 1.. unless score $mt.pet.attack.add.effect mt.score matches 0 unless score $mt.pet.attack.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack/effect
execute if score $mt.pet.attack.add.weapon mt.score matches 1.. if score $mt.pet.attack.add.effect mt.score matches 0 if score $mt.pet.attack.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack/variant_weapon
execute unless score $mt.pet.attack.add.weapon mt.score matches 1.. unless score $mt.pet.attack.add.effect mt.score matches 0 if score $mt.pet.attack.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack/variant_effect
execute if score $mt.pet.attack.add.weapon mt.score matches 1.. unless score $mt.pet.attack.add.effect mt.score matches 0 unless score $mt.pet.attack.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack/weapon_effect
execute if score $mt.pet.attack.add.weapon mt.score matches 1.. unless score $mt.pet.attack.add.effect mt.score matches 0 if score $mt.pet.attack.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/attack/all

execute unless score $mt.pet.armor.add.weapon mt.score matches 1.. if score $mt.pet.armor.add.effect mt.score matches 0 unless score $mt.pet.armor.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor/base
execute unless score $mt.pet.armor.add.weapon mt.score matches 1.. if score $mt.pet.armor.add.effect mt.score matches 0 if score $mt.pet.armor.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor/variant
execute if score $mt.pet.armor.add.weapon mt.score matches 1.. if score $mt.pet.armor.add.effect mt.score matches 0 unless score $mt.pet.armor.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor/weapon
execute unless score $mt.pet.armor.add.weapon mt.score matches 1.. unless score $mt.pet.armor.add.effect mt.score matches 0 unless score $mt.pet.armor.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor/effect
execute if score $mt.pet.armor.add.weapon mt.score matches 1.. if score $mt.pet.armor.add.effect mt.score matches 0 if score $mt.pet.armor.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor/variant_weapon
execute unless score $mt.pet.armor.add.weapon mt.score matches 1.. unless score $mt.pet.armor.add.effect mt.score matches 0 if score $mt.pet.armor.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor/variant_effect
execute if score $mt.pet.armor.add.weapon mt.score matches 1.. unless score $mt.pet.armor.add.effect mt.score matches 0 unless score $mt.pet.armor.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor/weapon_effect
execute if score $mt.pet.armor.add.weapon mt.score matches 1.. unless score $mt.pet.armor.add.effect mt.score matches 0 if score $mt.pet.armor.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor/all

execute if score $mt.pet.speed.add.effect mt.score matches 0 unless score $mt.pet.speed.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/speed/base
execute if score $mt.pet.speed.add.effect mt.score matches 0 if score $mt.pet.speed.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/speed/variant
execute unless score $mt.pet.speed.add.effect mt.score matches 0 unless score $mt.pet.speed.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/speed/effect
execute unless score $mt.pet.speed.add.effect mt.score matches 0 if score $mt.pet.speed.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/speed/variant_effect
execute unless score $mt.pet.speed.add.effect mt.score matches 0 if score $mt.pet.speed.add.variant mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/speed/all

execute if score $mt.pet.knockback mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/knockback
# execute if score $mt.pet.armor mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor
# execute if score $mt.pet.speed mt.score matches 1.. run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/speed
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems[3].count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/head
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems[3].components.enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_head
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems[2].count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/chest
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems[2].components.enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_chest
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems[1].count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/legs
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems[1].components.enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_legs
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems[0].count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/feet
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems[0].components.enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_feet

# 上でmainhandを塗り替えてしまったのでなんとかする
data modify entity @s ArmorItems[3] set from storage mobtamer:temp data.Item.components."minecraft:entity_data".HandItems[0]
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".HandItems[0].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/mainhand
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".HandItems[0].components.Enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_mainhand
data modify entity @s ArmorItems[3] set from storage mobtamer:temp data.Item.components."minecraft:entity_data".HandItems[1]
execute if data storage mobtamer:temp data.Item.components."minecraft:entity_data".HandItems[1].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/offhand

item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/cost

item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/xp

data modify storage mobtamer:temp data.Item.components."minecraft:custom_name" set from entity @s HandItems[0].components."minecraft:custom_name"
data modify storage mobtamer:temp data.Item.components."minecraft:lore" set from entity @s HandItems[0].components."minecraft:lore"


kill @s