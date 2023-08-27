
execute on vehicle run scoreboard players set $mt.c_a_o_t.return mt.score 1

execute unless entity @s[type=#mobtamer:can_revenge] if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute if score @s mt.hostile_interval matches 11.. run scoreboard players set $mt.c_a_o_t.return mt.score 1
execute if score @s mt.strategy = $mt.strategy.balance mt.score if entity @s[tag=mt.health.yellow] run scoreboard players set $mt.c_a_o_t.return mt.score 1
execute if score @s mt.strategy = $mt.strategy.recover mt.score unless score @s mt.health = @s mt.max_health run scoreboard players set $mt.c_a_o_t.return mt.score 1

execute unless score $mt.c_a_o_t.return mt.score matches 1 at @s on target if entity @s[distance=..20] run function mobtamer:sys/player/pet/each/unique/custom_attack_on_target/00

scoreboard players reset $mt.c_a_o_t.return mt.score
