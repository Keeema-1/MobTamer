
execute on vehicle run return 1

execute unless entity @s[type=#mobtamer:can_revenge] if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute if score @s mt.hostile_interval matches 11.. run scoreboard players set $mt.return mt.score 1
execute on target run scoreboard players set $mt.return mt.score 1
execute if score @s mt.strategy = $mt.strategy.balance mt.score if entity @s[tag=mt.health.yellow] run scoreboard players set $mt.return mt.score 1
execute if score @s mt.strategy = $mt.strategy.recover mt.score unless score @s mt.health = @s mt.max_health run scoreboard players set $mt.return mt.score 1

execute if entity @s[type=!#mobtamer:hitbox/wide] at @s on passengers if entity @s[tag=mt.target_record_entity] on origin if entity @s[distance=..20] facing entity @s feet positioned ^ ^ ^0.25 run function mobtamer:sys/player/pet/each/unique/custom_attack/00
execute if entity @s[type=#mobtamer:hitbox/wide] at @s on passengers if entity @s[tag=mt.target_record_entity] on origin if entity @s[distance=..20] facing entity @s feet positioned ^ ^ ^0.75 run function mobtamer:sys/player/pet/each/unique/custom_attack/00

execute on passengers if entity @s[tag=mt.target_record_entity] on origin if predicate mobtamer:die unless entity @s[tag=mt.dead_check] on attacker if entity @s[tag=mt.player_check] as @e[team=!,tag=mt.pet_check,tag=mt.pet] run function mobtamer:sys/player/pet/each/xp/0

execute unless score $mt.exist_target_record_entity mt.score matches 1 on passengers if entity @s[tag=mt.target_record_entity] run kill @s

execute unless score $mt.exist_target_record_entity mt.score matches 1 unless score $mt.return mt.score matches 1 unless predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/custom_attack/target_start/0

data remove storage mobtamer:temp data.rot2vec
scoreboard players reset $mt.exist_target_record_entity mt.score
scoreboard players reset $mt.return mt.score
