
execute store result score $mt.pet_equipment.release_progress mt.score run data get storage mobtamer:settings data.release_progress.pet_equipment
execute unless score $mt.pet_equipment.release_progress mt.score matches 1.. run data modify storage mobtamer:settings data.release_progress.pet_equipment set value 1

execute unless score $mt.pet_equipment.release_progress mt.score matches 1.. run tellraw @s [{"storage": "mobtamer:text","nbt":"data.trader.trade_unlock","interpret": true}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 1.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.wooden_hoe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 1.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.golden_hoe","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 1.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.leather_helmet","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 1.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.leather_chestplate","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 1.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.leather_leggings","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 1.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.leather_boots","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]

scoreboard players reset $mt.pet_equipment.release_progress mt.score