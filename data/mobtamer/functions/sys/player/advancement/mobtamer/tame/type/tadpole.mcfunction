scoreboard players operation $mt.cost.before mt.score = @s mt.cost
scoreboard players add @s mt.cost 5
scoreboard players add @s mt.tame_type_count 1
data modify storage mobtamer:database data.record.frog.any set value 1b
tellraw @s [{"text":"パーティーのコスト上限が増加しました。 （","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"}},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"}},{"text":"）","color": "aqua"}]
scoreboard players reset $mt.cost.before mt.score
tellraw @s [{"text":"テイムしたモブの種類：","color":"aqua"},{"score":{"name":"@s","objective":"mt.tame_type_count"}}]
