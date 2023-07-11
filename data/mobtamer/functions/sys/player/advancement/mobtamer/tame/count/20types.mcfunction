# scoreboard players operation $mt.cost.before mt.score = @s mt.cost
# scoreboard players add @s mt.cost 20
# tellraw @s [{"text":"パーティーのコスト上限が増加しました。 （","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"}},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"}},{"text":"）","color": "aqua"}]
# scoreboard players reset $mt.cost.before mt.score


execute unless data storage mobtamer:settings data.release_progress.gacha{bronze:1b} run tellraw @s [{"text":"テイマー商人の取引に以下が追加されました。","color": "green"}]
execute unless data storage mobtamer:settings data.release_progress.gacha{bronze:1b} run tellraw @s [{"text": "  ","color": "yellow"},{"text": "ブロンズガチャ","color": "yellow"}]

data modify storage mobtamer:settings data.release_progress.gacha.bronze set value 1b
