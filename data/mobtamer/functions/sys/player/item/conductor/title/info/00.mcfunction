scoreboard players set $mt.cost.sum mt.score 0
execute as @e[team=!,tag=mt.player_check,tag=mt.pet] run scoreboard players operation $mt.cost.sum mt.score += @s mt.cost

title @s actionbar ["",{"text":"【モード：情報】 ","color": "green"},{"text":"パーティーのコスト ","color": "green"},{"text":""},{"score":{"name": "$mt.cost.sum","objective": "mt.score"},"color": "aqua"},{"text":"/"},{"score":{"name": "@s","objective": "mt.cost"}}]
