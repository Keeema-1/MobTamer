execute if entity @s[type=#mobtamer:pet_type/overworld/monster/terrestrial/raider] if entity @e[type=#mobtamer:pet_type/overworld/monster/terrestrial/raider,tag=mt.target,limit=1] run scoreboard players set $mt.be_hostile.return mt.score 1
execute if entity @s[type=piglin] if entity @e[type=piglin,tag=mt.target,limit=1] run scoreboard players set $mt.be_hostile.return mt.score 1
execute if score @s mt.strategy = $mt.strategy.balance mt.score if entity @s[tag=mt.health.yellow] run scoreboard players set $mt.be_hostile.return mt.score 1
execute if score @s mt.strategy = $mt.strategy.recover mt.score unless score @s mt.health = @s mt.max_health run scoreboard players set $mt.be_hostile.return mt.score 1

execute unless score $mt.be_hostile.return mt.score matches 1 run function mobtamer:sys/common/pet/be_hostile

scoreboard players reset $mt.be_hostile.return mt.score