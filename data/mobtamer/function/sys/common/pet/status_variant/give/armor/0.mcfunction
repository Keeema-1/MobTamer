
execute if entity @s[type=#mobtamer:status_variant/armor/probability/1] if predicate mobtamer:random/status_variant/armor/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/1] if predicate mobtamer:random/status_variant/armor/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/1] if predicate mobtamer:random/status_variant/armor/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/1] if predicate mobtamer:random/status_variant/armor/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/1] if predicate mobtamer:random/status_variant/armor/1 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/1] if predicate mobtamer:random/status_variant/armor/1 run scoreboard players add $mt.random mt.score 1

execute if entity @s[type=#mobtamer:status_variant/armor/probability/2] if predicate mobtamer:random/status_variant/armor/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/2] if predicate mobtamer:random/status_variant/armor/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/2] if predicate mobtamer:random/status_variant/armor/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/2] if predicate mobtamer:random/status_variant/armor/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/2] if predicate mobtamer:random/status_variant/armor/2 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/2] if predicate mobtamer:random/status_variant/armor/2 run scoreboard players add $mt.random mt.score 1

execute if entity @s[type=#mobtamer:status_variant/armor/probability/3] if predicate mobtamer:random/status_variant/armor/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/3] if predicate mobtamer:random/status_variant/armor/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/3] if predicate mobtamer:random/status_variant/armor/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/3] if predicate mobtamer:random/status_variant/armor/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/3] if predicate mobtamer:random/status_variant/armor/3 run scoreboard players add $mt.random mt.score 1
execute if entity @s[type=#mobtamer:status_variant/armor/probability/3] if predicate mobtamer:random/status_variant/armor/3 run scoreboard players add $mt.random mt.score 1


execute if score $mt.random mt.score matches 1 run attribute @s generic.armor modifier add mt.armor.add 1 add_value
execute if score $mt.random mt.score matches 2 run attribute @s generic.armor modifier add mt.armor.add 2 add_value
execute if score $mt.random mt.score matches 3 run attribute @s generic.armor modifier add mt.armor.add 3 add_value
execute if score $mt.random mt.score matches 4 run attribute @s generic.armor modifier add mt.armor.add 4 add_value
execute if score $mt.random mt.score matches 5 run attribute @s generic.armor modifier add mt.armor.add 5 add_value
execute if score $mt.random mt.score matches 6 run attribute @s generic.armor modifier add mt.armor.add 6 add_value

scoreboard players reset $mt.random mt.score