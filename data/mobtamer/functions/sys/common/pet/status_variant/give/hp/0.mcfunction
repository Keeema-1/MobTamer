
execute if entity @s[type=#mobtamer:status_variant/hp/probability/1] if predicate mobtamer:random/status_variant/hp/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/1] if predicate mobtamer:random/status_variant/hp/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/1] if predicate mobtamer:random/status_variant/hp/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/1] if predicate mobtamer:random/status_variant/hp/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/1] if predicate mobtamer:random/status_variant/hp/1 run scoreboard players add $mt.random mt.score 1

execute if entity @s[type=#mobtamer:status_variant/hp/probability/2] if predicate mobtamer:random/status_variant/hp/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/2] if predicate mobtamer:random/status_variant/hp/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/2] if predicate mobtamer:random/status_variant/hp/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/2] if predicate mobtamer:random/status_variant/hp/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/2] if predicate mobtamer:random/status_variant/hp/2 run scoreboard players add $mt.random mt.score 1

execute if entity @s[type=#mobtamer:status_variant/hp/probability/3] if predicate mobtamer:random/status_variant/hp/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/3] if predicate mobtamer:random/status_variant/hp/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/3] if predicate mobtamer:random/status_variant/hp/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/3] if predicate mobtamer:random/status_variant/hp/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/hp/probability/3] if predicate mobtamer:random/status_variant/hp/3 run scoreboard players add $mt.random mt.score 1


execute if score $mt.random mt.score matches 1 run attribute @s generic.max_health modifier add 0-0-0-0-aea "mt.max_health.add" 2 add
execute if score $mt.random mt.score matches 2 run attribute @s generic.max_health modifier add 0-0-0-0-aea "mt.max_health.add" 4 add
execute if score $mt.random mt.score matches 3 run attribute @s generic.max_health modifier add 0-0-0-0-aea "mt.max_health.add" 6 add
execute if score $mt.random mt.score matches 4 run attribute @s generic.max_health modifier add 0-0-0-0-aea "mt.max_health.add" 8 add
execute if score $mt.random mt.score matches 5 run attribute @s generic.max_health modifier add 0-0-0-0-aea "mt.max_health.add" 10 add

# tellraw @a [{"score":{"name": "$mt.random","objective": "mt.score"}}]

scoreboard players reset $mt.random mt.score