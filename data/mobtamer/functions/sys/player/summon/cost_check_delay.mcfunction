
function mobtamer:sys/common/pet/status/all
execute store result score @s mt.cost run data get storage mobtamer:temp data.pet_status.cost.value

scoreboard players set $mt.cost.sum mt.score 0
execute as @e[team=mt.common,tag=mt.player_check,tag=!mt.,tag=mt.pet] run scoreboard players operation $mt.cost.sum mt.score += @s mt.cost

# execute run tellraw @a [{"text": "合計コスト: "},{"score":{"name": "$mt.cost.sum","objective": "mt.score"}}]

execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run function mobtamer:sys/player/pet/each/store/0
execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run tellraw @a [{"text": "パーティーのコスト上限を超えたため、アイテム化されました。"}]
execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run return 1

scoreboard players reset $mt.cost.sum mt.score
data remove storage mobtamer:temp data.pet_status
