
execute on origin if entity @s[tag=!mt.pet_check] run scoreboard players set $mt.wither.return mt.score 1

execute unless score $mt.wither.return mt.score matches 1 run kill @s
scoreboard players reset $mt.wither.return mt.score