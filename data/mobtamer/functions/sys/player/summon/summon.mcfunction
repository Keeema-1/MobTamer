
# execute if entity @s[type=phantom] run effect give @s fire_resistance infinite 1 true
execute if entity @s[type=#mobtamer:slimes] run effect give @s weakness infinite 31 true
# execute if entity @s[type=#mobtamer:slimes] run attribute @s generic.attack_damage modifier add 3859f171-dc76-4318-be87-d6578c1fbe25 "mt.attack.0" 0 multiply_base
# execute if entity @s[type=#mobtamer:slimes] run attribute @s generic.attack_damage base set 0

execute if entity @s[type=fox] run data modify entity @s Trusted append from entity @a[tag=mt.player_check,limit=1] UUID
execute if entity @s[type=fox] run data modify entity @s Trusted append from entity @a[tag=mt.player_check,limit=1] UUID
execute if data entity @s Owner run data modify entity @s Owner set from entity @a[tag=mt.player_check,limit=1] UUID

tag @s add mt.pet_check
execute if entity @s[tag=mt.down] run function mobtamer:sys/player/pet/each/down/down/0

tag @s remove mt.pet_check

scoreboard players set @s mt.summon_check_time 10
