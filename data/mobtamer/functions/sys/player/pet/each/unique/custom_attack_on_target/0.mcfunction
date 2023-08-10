
execute on vehicle run return 1

execute on attacker run return 1

execute unless entity @s[type=#mobtamer:can_revenge] if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute if score @s mt.hostile_interval matches 11.. run return 1
execute if score @s mt.strategy = $mt.strategy.balance mt.score if entity @s[tag=mt.health.red] run return 1
execute if score @s mt.strategy = $mt.strategy.recover mt.score if entity @s[tag=mt.health.yellow] run return 1

execute at @s on target if entity @s[distance=..20] run function mobtamer:sys/player/pet/each/unique/custom_attack_on_target/00
