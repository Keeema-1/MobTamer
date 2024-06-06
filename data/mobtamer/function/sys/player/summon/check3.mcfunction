
function mobtamer:sys/player/summon/slot/0
scoreboard players operation @s mt.slot = $mt.new mt.slot

execute unless score @s mt.slot <= $mt.sys mt.slot run tellraw @a[tag=mt.player_check] [{"text": "ペットの数が上限を超えたため、アイテム化されました。"}]
execute unless score @s mt.slot <= $mt.sys mt.slot run function mobtamer:sys/player/pet/each/store/0
execute unless score @s mt.slot <= $mt.sys mt.slot run return 1

function mobtamer:sys/player/summon/summon
