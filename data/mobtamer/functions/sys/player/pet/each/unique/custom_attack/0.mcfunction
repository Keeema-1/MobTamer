
execute on vehicle run return 1

execute unless entity @s[type=#mobtamer:can_revenge] if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute if score @s mt.hostile_interval matches 11.. run scoreboard players set $mt.return mt.score 1
execute unless data entity @s {HurtTime:0s} run scoreboard players set $mt.return mt.score 1
execute on target run scoreboard players set $mt.return mt.score 1
execute if score @s mt.strategy = $mt.strategy.balance mt.score if entity @s[tag=mt.health.red] run scoreboard players set $mt.return mt.score 1
execute if score @s mt.strategy = $mt.strategy.recover mt.score if entity @s[tag=mt.health.yellow] run scoreboard players set $mt.return mt.score 1

execute at @s on passengers if entity @s[tag=mt.target_record_entity] on origin if entity @s[distance=..20] run function mobtamer:sys/player/pet/each/unique/custom_attack/00

execute unless score $mt.exist_target_record_entity mt.score matches 1 on passengers if entity @s[tag=mt.target_record_entity] run kill @s

execute unless score $mt.exist_target_record_entity mt.score matches 1 unless score $mt.return mt.score matches 1 unless predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/custom_attack/target_start/0

data remove storage mobtamer:temp data.rot2vec
scoreboard players reset $mt.exist_target_record_entity mt.score
scoreboard players reset $mt.return mt.score
