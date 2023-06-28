effect clear @s
execute store result score $mt.target.attack.no_effect mt.score run attribute @s generic.attack_damage get
execute store result score $mt.target.max_health mt.score run attribute @s generic.max_health base get
execute store result score $mt.target.armor mt.score run attribute @s generic.armor get


scoreboard players operation $mt.xp.add mt.score = $mt.target.attack.no_effect mt.score

execute if entity @s[type=#mobtamer:slimes] run scoreboard players set $mt.xp.add mt.score 1

execute if entity @s[type=cave_spider] run scoreboard players add $mt.xp.add mt.score 1
execute if entity @s[type=skeleton] run scoreboard players add $mt.xp.add mt.score 2
execute if entity @s[type=stray] run scoreboard players add $mt.xp.add mt.score 2
execute if entity @s[type=witch] run scoreboard players add $mt.xp.add mt.score 2
execute if entity @s[type=ghast] run scoreboard players add $mt.xp.add mt.score 40
execute if entity @s[type=shulker] run scoreboard players add $mt.xp.add mt.score 10
execute if entity @s[type=blaze] run scoreboard players add $mt.xp.add mt.score 9
execute if entity @s[type=evoker] run scoreboard players add $mt.xp.add mt.score 19
# execute if entity @s[type=panda] run scoreboard players remove $mt.xp.add mt.score 2
# execute if entity @s[type=frog] run scoreboard players remove $mt.xp.add mt.score 6
execute if entity @s[type=warden] run scoreboard players remove $mt.xp.add mt.score 20

scoreboard players set $mt.xp.multiplier mt.score 0
scoreboard players set $mt.xp.divider mt.score 1
execute if entity @s[type=#mobtamer:xp/multiplier/0] run scoreboard players set $mt.xp.multiplier mt.score 0
execute if entity @s[type=#mobtamer:xp/multiplier/1] run scoreboard players set $mt.xp.multiplier mt.score 1
execute if entity @s[type=#mobtamer:xp/multiplier/2] run scoreboard players set $mt.xp.multiplier mt.score 2
execute if entity @s[type=#mobtamer:xp/multiplier/3] run scoreboard players set $mt.xp.multiplier mt.score 3
execute if entity @s[type=#mobtamer:xp/multiplier/4] run scoreboard players set $mt.xp.multiplier mt.score 4
execute if entity @s[type=#mobtamer:xp/multiplier/5] run scoreboard players set $mt.xp.multiplier mt.score 5
execute if entity @s[type=#mobtamer:xp/multiplier/30] run scoreboard players set $mt.xp.multiplier mt.score 30
execute if entity @s[type=#mobtamer:xp/multiplier/50] run scoreboard players set $mt.xp.multiplier mt.score 50
execute if entity @s[type=#mobtamer:xp/multiplier/100] run scoreboard players set $mt.xp.multiplier mt.score 100

execute if entity @s[type=#mobtamer:xp/multiplier/half] run scoreboard players set $mt.xp.divider mt.score 2

scoreboard players operation $mt.xp.add mt.score *= $mt.target.max_health mt.score
scoreboard players operation $mt.xp.add.tmp mt.score = $mt.target.armor mt.score
scoreboard players add $mt.xp.add.tmp mt.score 20
scoreboard players operation $mt.xp.add mt.score *= $mt.xp.add.tmp mt.score
scoreboard players set $mt.xp.add.tmp mt.score 100
scoreboard players operation $mt.xp.add mt.score /= $mt.xp.add.tmp mt.score
scoreboard players operation $mt.xp.add mt.score /= $mt.xp.divider mt.score

execute unless score $mt.xp.add mt.score matches 1.. run scoreboard players set $mt.xp.add mt.score 1

scoreboard players operation $mt.xp.add mt.score *= $mt.xp.multiplier mt.score

execute if entity @s[type=wither] run scoreboard players set $mt.xp.add mt.score 3000

scoreboard players reset $mt.xp.add.tmp mt.score
scoreboard players reset $mt.xp.multiplier mt.score
scoreboard players reset $mt.xp.divider mt.score
scoreboard players reset $mt.target.attack.no_effect mt.score
scoreboard players reset $mt.target.max_health mt.score
scoreboard players reset $mt.target.armor mt.score
