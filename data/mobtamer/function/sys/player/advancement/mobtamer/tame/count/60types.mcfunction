
execute store result score $mt.pet_equipment.release_progress mt.score run data get storage mobtamer:settings data.release_progress.pet_equipment
execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run data modify storage mobtamer:settings data.release_progress.pet_equipment set value 4

execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run tellraw @s [{"storage": "mobtamer:text","nbt":"data.trader.trade_unlock","interpret": true}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.wooden_sword","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.stone_sword","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.golden_sword","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.for_pet","interpret": true,"color": "yellow"}]

scoreboard players reset $mt.pet_equipment.release_progress mt.score


execute unless data storage mobtamer:settings data.release_progress.gacha{gold:1b} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.trader.trade_unlock","interpret": true}]
execute unless data storage mobtamer:settings data.release_progress.gacha{gold:1b} run tellraw @s [{"text": "  ","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.gold_gacha","interpret": true,"color": "yellow"}]

data modify storage mobtamer:settings data.release_progress.gacha.gold set value 1b
