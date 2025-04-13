
# execute if entity @s[type=#mobtamer:slimes] run effect give @s weakness infinite 31 true

execute if entity @s[type=fox] run data modify entity @s Trusted append from entity @p[tag=mt.player_check] UUID
execute if entity @s[type=fox] run data modify entity @s Trusted append from entity @p[tag=mt.player_check] UUID
execute if data entity @s Owner run data modify entity @s Owner set from entity @p[tag=mt.player_check] UUID

attribute @s spawn_reinforcements base set 0

data merge entity @s {CustomNameVisible:1b,PersistenceRequired:1b}

# execute if entity @s[type=#mobtamer:custom_attack/always] run tag @s add mt.custom_attack

# scoreboard players operation @s mt.strategy = #mt.strategy.balance mt.score
# execute if data storage mobtamer:temp data.player_settings{default_strategy:"attack"} run scoreboard players operation @s mt.strategy = #mt.strategy.attack mt.score
# execute if data storage mobtamer:temp data.player_settings{default_strategy:"balance"} run scoreboard players operation @s mt.strategy = #mt.strategy.balance mt.score
# execute if data storage mobtamer:temp data.player_settings{default_strategy:"recover"} run scoreboard players operation @s mt.strategy = #mt.strategy.recover mt.score
# execute if data storage mobtamer:temp data.player_settings{default_strategy:"follow"} run scoreboard players operation @s mt.strategy = #mt.strategy.follow mt.score

# execute if entity @s[tag=mt.strategy.attack] run scoreboard players operation @s mt.strategy = #mt.strategy.attack mt.score
# execute if entity @s[tag=mt.strategy.balance] run scoreboard players operation @s mt.strategy = #mt.strategy.balance mt.score
# execute if entity @s[tag=mt.strategy.recover] run scoreboard players operation @s mt.strategy = #mt.strategy.recover mt.score
# execute if entity @s[tag=mt.strategy.follow] run scoreboard players operation @s mt.strategy = #mt.strategy.follow mt.score
# tag @s remove mt.strategy.attack
# tag @s remove mt.strategy.balance
# tag @s remove mt.strategy.recover
# tag @s remove mt.strategy.follow

# tag @s add mt.pet_check
# execute if entity @s[tag=mt.down] run function mobtamer:sys/player/pet/each/down/down/0

# tag @s remove mt.pet_check

# scoreboard players set @s mt.summon_check_time 10

advancement grant @a[tag=mt.player_check] only mobtamer:mobtamer/caution/summon
