# scoreboard players operation $mt.cost.before mt.score = @s mt.cost
# scoreboard players add @s mt.cost 20
# tellraw @s [{"text":"パーティーのコスト上限が増加しました。 （","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"}},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"}},{"text":"）","color": "aqua"}]
# scoreboard players reset $mt.cost.before mt.score


execute store result score $mt.pet_equipment.release_progress mt.score run data get storage mobtamer:settings data.release_progress.pet_equipment
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run data modify storage mobtamer:settings data.release_progress.pet_equipment set value 5

execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text":"テイマー商人の取引の抽選に以下が追加されました。","color": "green"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_hoe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_pickaxe","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_shovel","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_sword","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_helmet","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_chestplate","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_leggings","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 5.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.iron_boots","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]

scoreboard players reset $mt.pet_equipment.release_progress mt.score