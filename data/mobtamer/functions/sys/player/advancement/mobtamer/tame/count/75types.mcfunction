
execute store result score $mt.pet_equipment.release_progress mt.score run data get storage mobtamer:settings data.release_progress.pet_equipment
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run data modify storage mobtamer:settings data.release_progress.pet_equipment set value 6

execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text":"テイマー商人の取引の抽選に以下が追加されました。","color": "green"}]

execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.wooden_axe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.golden_axe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.stone_axe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_axe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_axe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_sword","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_hoe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_shovel","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_pickaxe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_helmet","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_chestplate","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_leggings","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.diamond_boots","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.elytra","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.trident","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 6.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.turtle_helmet","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]

scoreboard players reset $mt.pet_equipment.release_progress mt.score


execute unless data storage mobtamer:settings data.release_progress{pet_equipment_trader:1b} run tellraw @s [{"text":"行商人の取引に以下が追加されました。","color": "green"}]
execute unless data storage mobtamer:settings data.release_progress{pet_equipment_trader:1b} run tellraw @s [{"text": "  ペット装備商人を呼ぶ","color": "yellow"}]
execute unless data storage mobtamer:settings data.release_progress{pet_equipment_trader:1b} run data modify storage mobtamer:settings data.release_progress.pet_equipment_trader set value 1b


execute unless data storage mobtamer:settings data.release_progress.gacha{diamond:1b} run tellraw @s [{"text":"テイマー商人の取引に以下が追加されました。","color": "green"}]
execute unless data storage mobtamer:settings data.release_progress.gacha{diamond:1b} run tellraw @s [{"text": "  ","color": "yellow"},{"text": "ダイヤモンドガチャ","color": "yellow"}]

data modify storage mobtamer:settings data.release_progress.gacha.diamond set value 1b
