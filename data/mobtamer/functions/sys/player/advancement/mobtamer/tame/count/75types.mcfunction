
execute store result score $mt.pet_equipment.release_progress mt.score run data get storage mobtamer:settings data.release_progress.pet_equipment
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run data modify storage mobtamer:settings data.release_progress.pet_equipment set value 6

execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"storage": "mobtamer:text","nbt":"data.trader.trade_unlock","interpret": true}]

execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.wooden_axe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.golden_axe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.stone_axe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_axe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_axe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_sword","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_hoe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_shovel","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_pickaxe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_helmet","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_chestplate","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_leggings","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_boots","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.elytra","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.trident","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.turtle_helmet","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]

scoreboard players reset $mt.pet_equipment.release_progress mt.score


execute unless data storage mobtamer:settings data.release_progress{pet_equipment_trader:1b} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.trader.trade_unlock","interpret": true}]
execute unless data storage mobtamer:settings data.release_progress{pet_equipment_trader:1b} run tellraw @s [{"text": "  ","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.summon_trader","interpret": true,"color": "yellow"}]
execute unless data storage mobtamer:settings data.release_progress{pet_equipment_trader:1b} run data modify storage mobtamer:settings data.release_progress.pet_equipment_trader set value 1b


execute unless data storage mobtamer:settings data.release_progress.gacha{diamond:1b} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.trader.trade_unlock","interpret": true}]
execute unless data storage mobtamer:settings data.release_progress.gacha{diamond:1b} run tellraw @s [{"text": "  ","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.diamond_gacha","interpret": true,"color": "yellow"}]

data modify storage mobtamer:settings data.release_progress.gacha.diamond set value 1b
