execute if entity @s[type=#mobtamer:pet_type/overworld/monster/terrestrial/raider] if entity @e[type=#mobtamer:pet_type/overworld/monster/terrestrial/raider,team=!mt.common,tag=mt.target,limit=1] run return 1
damage @s 0 mob_attack by @e[team=!mt.common,tag=mt.target,limit=1]

particle angry_villager ~ ~3 ~ 0 0 0 0 1
