execute if entity @s[type=#mobtamer:pet_type/overworld/monster/terrestrial/raider] if entity @e[type=#mobtamer:pet_type/overworld/monster/terrestrial/raider,tag=mt.target,limit=1] run return 1
execute if entity @s[type=piglin] if entity @e[type=piglin,tag=mt.target,limit=1] run return 1
execute if score @s mt.strategy = $mt.strategy.balance mt.score if entity @s[tag=mt.health.yellow] run return 1
execute if score @s mt.strategy = $mt.strategy.recover mt.score unless score @s mt.health = @s mt.max_health run return 1

damage @s 0 mob_attack by @e[tag=mt.target,limit=1]

particle angry_villager ~ ~3 ~ 0 0 0 0 1

scoreboard players set @s mt.hostile_interval 40
