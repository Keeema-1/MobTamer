
function mobtamer:sys/player/summon/slot/0
scoreboard players operation @s mt.slot = $mt.new mt.slot

execute unless score @s mt.slot <= $mt.sys mt.slot run tellraw @a [{"text": "ペットの数が上限を超えたため、アイテム化されました。"}]
execute unless score @s mt.slot <= $mt.sys mt.slot run function mobtamer:sys/player/pet/each/store/0
execute unless score @s mt.slot <= $mt.sys mt.slot run return 1

# scoreboard players set $mt.cost.sum mt.score 0
# execute as @e[team=mt.common,tag=mt.player_check,tag=!mt.,tag=mt.pet] run scoreboard players operation $mt.cost.sum mt.score += @s mt.cost

# execute run tellraw @a [{"text": "合計コスト: "},{"score":{"name": "$mt.cost.sum","objective": "mt.score"}}]

# execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run function mobtamer:sys/player/pet/each/store/0
# execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run tellraw @a [{"text": "パーティーのコスト上限を超えたため、アイテム化されました。"}]
# execute if data storage mobtamer:settings data{party_cost_max:1b} if score $mt.cost.sum mt.score > @a[tag=mt.player_check,limit=1] mt.cost run return 1

# scoreboard players reset $mt.cost.sum mt.score

function mobtamer:sys/player/summon/summon
