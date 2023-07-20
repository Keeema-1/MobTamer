
function mobtamer:sys/common/pet/status/all
execute store result score @s mt.cost run data get storage mobtamer:temp data.pet_status.cost.value

scoreboard players set $mt.cost.sum mt.score 0
execute as @e[team=!,tag=mt.player_check,tag=!mt.,tag=mt.pet] run scoreboard players operation $mt.cost.sum mt.score += @s mt.cost

execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run function mobtamer:sys/player/pet/each/store/0
execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run tellraw @a[tag=mt.player_check] [{"text": "パーティーのコスト上限を超えたため、アイテム化されました。"}]
execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run return 1

scoreboard players reset $mt.cost.sum mt.score
data remove storage mobtamer:temp data.pet_status
