
execute store result score $mt.pet_equipment.release_progress mt.score run data get storage mobtamer:settings data.release_progress.pet_equipment
execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run data modify storage mobtamer:settings data.release_progress.pet_equipment set value 3

execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run tellraw @s [{"storage": "mobtamer:text","nbt":"data.trader.trade_unlock","interpret": true}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.stone_hoe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.stone_pickaxe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.stone_shovel","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.chainmail_helmet","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.chainmail_chestplate","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.chainmail_leggings","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 3.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.chainmail_boots","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]

scoreboard players reset $mt.pet_equipment.release_progress mt.score