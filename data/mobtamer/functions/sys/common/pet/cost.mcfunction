scoreboard players operation $mt.cost mt.score = $mt.pet.attack.no_effect mt.score

execute if entity @s[type=#mobtamer:slimes] run scoreboard players set $mt.cost mt.score 1

execute if entity @s[type=cave_spider] run scoreboard players add $mt.cost mt.score 1
execute if entity @s[type=skeleton] run scoreboard players add $mt.cost mt.score 2
execute if entity @s[type=stray] run scoreboard players add $mt.cost mt.score 2
execute if entity @s[type=witch] run scoreboard players add $mt.cost mt.score 2
execute if entity @s[type=ghast] run scoreboard players add $mt.cost mt.score 40
execute if entity @s[type=shulker] run scoreboard players add $mt.cost mt.score 10
execute if entity @s[type=blaze] run scoreboard players add $mt.cost mt.score 9
execute if entity @s[type=evoker] run scoreboard players add $mt.cost mt.score 19
execute if entity @s[type=panda] run scoreboard players remove $mt.cost mt.score 2
execute if entity @s[type=frog] run scoreboard players remove $mt.cost mt.score 6
execute if entity @s[type=warden] run scoreboard players remove $mt.cost mt.score 20

scoreboard players operation $mt.cost mt.score *= @s mt.max_health
scoreboard players operation $mt.cost.tmp mt.score = $mt.pet.armor mt.score
scoreboard players add $mt.cost.tmp mt.score 20
scoreboard players operation $mt.cost mt.score *= $mt.cost.tmp mt.score
scoreboard players set $mt.cost.tmp mt.score 100
scoreboard players operation $mt.cost mt.score /= $mt.cost.tmp mt.score
execute unless score $mt.cost mt.score matches 1.. run scoreboard players set $mt.cost mt.score 1

execute if entity @s[type=wither] run scoreboard players set $mt.cost mt.score 600

scoreboard players reset $mt.cost.tmp mt.score
