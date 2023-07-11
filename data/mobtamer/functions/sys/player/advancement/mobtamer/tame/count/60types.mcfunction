# scoreboard players operation $mt.cost.before mt.score = @s mt.cost
# scoreboard players add @s mt.cost 20
# tellraw @s [{"text":"パーティーのコスト上限が増加しました。 （","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"}},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"}},{"text":"）","color": "aqua"}]
# scoreboard players reset $mt.cost.before mt.score


execute store result score $mt.pet_equipment.release_progress mt.score run data get storage mobtamer:settings data.release_progress.pet_equipment
execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run data modify storage mobtamer:settings data.release_progress.pet_equipment set value 4

execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run tellraw @s [{"text":"テイマー商人の取引の抽選に以下が追加されました。","color": "green"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.wooden_sword","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.stone_sword","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]
execute unless score $mt.pet_equipment.release_progress mt.score matches 4.. run tellraw @s [{"text": "  ","color": "yellow"},{"translate":"item.minecraft.golden_sword","color": "yellow"},{"text": "（ペット用）","color": "yellow"}]

scoreboard players reset $mt.pet_equipment.release_progress mt.score


execute unless data storage mobtamer:settings data.release_progress.gacha{gold:1b} run tellraw @s [{"text":"テイマー商人の取引に以下が追加されました。","color": "green"}]
execute unless data storage mobtamer:settings data.release_progress.gacha{gold:1b} run tellraw @s [{"text": "  ","color": "yellow"},{"text": "ゴールドガチャ","color": "yellow"}]

data modify storage mobtamer:settings data.release_progress.gacha.gold set value 1b
