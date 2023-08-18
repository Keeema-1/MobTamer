# mt_pet_state:{}

execute store result score $mt.pet.attack mt.score run data get storage mobtamer:temp data.pet_status.attack.final
execute store result score $mt.pet.attack.no_effect mt.score run data get storage mobtamer:temp data.pet_status.attack.no_effect
execute store result score $mt.pet.attack.base mt.score run data get storage mobtamer:temp data.pet_status.attack.base
execute store result score $mt.pet.attack.add.weapon mt.score run data get storage mobtamer:temp data.pet_status.attack.add.weapon
execute store result score $mt.pet.attack.add.effect mt.score run data get storage mobtamer:temp data.pet_status.attack.add.effect
execute store result score $mt.pet.attack.add.variant mt.score run data get storage mobtamer:temp data.pet_status.attack.add.variant

execute store result score $mt.pet.armor mt.score run data get storage mobtamer:temp data.pet_status.armor.final
execute store result score $mt.pet.armor.no_effect mt.score run data get storage mobtamer:temp data.pet_status.armor.no_effect
execute store result score $mt.pet.armor.base mt.score run data get storage mobtamer:temp data.pet_status.armor.base
execute store result score $mt.pet.armor.add.weapon mt.score run data get storage mobtamer:temp data.pet_status.armor.add.weapon
execute store result score $mt.pet.armor.add.effect mt.score run data get storage mobtamer:temp data.pet_status.armor.add.effect
execute store result score $mt.pet.armor.add.variant mt.score run data get storage mobtamer:temp data.pet_status.armor.add.variant

execute store result score $mt.pet.speed mt.score run data get storage mobtamer:temp data.pet_status.speed.final
execute store result score $mt.pet.speed.no_effect mt.score run data get storage mobtamer:temp data.pet_status.speed.no_effect
execute store result score $mt.pet.speed.base mt.score run data get storage mobtamer:temp data.pet_status.speed.base
execute store result score $mt.pet.speed.add.effect mt.score run data get storage mobtamer:temp data.pet_status.speed.add.effect
execute store result score $mt.pet.speed.add.variant mt.score run data get storage mobtamer:temp data.pet_status.speed.add.variant

execute store result score $mt.pet.max_health mt.score run data get storage mobtamer:temp data.pet_status.max_health.final
execute store result score $mt.pet.max_health.base mt.score run data get storage mobtamer:temp data.pet_status.max_health.base
execute store result score $mt.pet.max_health.add.variant mt.score run data get storage mobtamer:temp data.pet_status.max_health.add.variant
execute store result score $mt.pet.health mt.score run data get storage mobtamer:temp data.pet_status.health
# execute store result score $mt.pet.armor mt.score run data get storage mobtamer:temp data.pet_status.armor
# execute store result score $mt.pet.speed mt.score run data get storage mobtamer:temp data.pet_status.speed
execute store result score $mt.pet.knockback mt.score run data get storage mobtamer:temp data.pet_status.knockback
execute store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.value
execute store result score $mt.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

item replace entity @s weapon.mainhand with stick
team leave @s
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

execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[3].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/head
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[3].tag.Enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_head
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[2].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/chest
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[2].tag.Enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_chest
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[1].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/legs
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[1].tag.Enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_legs
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[0].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/feet
execute if data storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems[0].tag.Enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_feet

# 上でmainhandを塗り替えてしまったのでなんとかする
data modify entity @s ArmorItems[3] set from storage mobtamer:temp data.Item.tag.EntityTag.HandItems[0]
execute if data storage mobtamer:temp data.Item.tag.EntityTag.HandItems[0].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/mainhand
execute if data storage mobtamer:temp data.Item.tag.EntityTag.HandItems[0].tag.Enchantments run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/enchant_mainhand
data modify entity @s ArmorItems[3] set from storage mobtamer:temp data.Item.tag.EntityTag.HandItems[1]
execute if data storage mobtamer:temp data.Item.tag.EntityTag.HandItems[1].Count run item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/armor_items/offhand

item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/cost

item modify entity @s weapon.mainhand mobtamer:spawn_egg/when_store/xp

data modify storage mobtamer:temp data.Item.tag.display set from entity @s HandItems[0].tag.display




scoreboard players reset $mt.pet.attack mt.score
scoreboard players reset $mt.pet.attack.base mt.score
scoreboard players reset $mt.pet.attack.variant mt.score
scoreboard players reset $mt.pet.attack.add mt.score
scoreboard players reset $mt.pet.attack.add.weapon mt.score
scoreboard players reset $mt.pet.attack.add.effect mt.score
scoreboard players reset $mt.pet.attack.no_effect mt.score
scoreboard players reset $mt.pet.knockback mt.score
scoreboard players reset $mt.pet.armor mt.score
scoreboard players reset $mt.pet.speed mt.score
scoreboard players reset $mt.pet.max_health mt.score
scoreboard players reset $mt.pet.max_health.base mt.score
scoreboard players reset $mt.pet.max_health.add.variant mt.score
scoreboard players reset $mt.pet.health mt.score

scoreboard players reset $mt.cost mt.score
scoreboard players reset $mt.xp mt.score
