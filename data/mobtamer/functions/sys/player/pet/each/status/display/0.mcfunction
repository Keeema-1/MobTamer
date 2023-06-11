
scoreboard players operation $mt.display mt.health = @s mt.health
scoreboard players operation $mt.display mt.max_health = @s mt.max_health
scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.display mt.health /= $mt.const mt.score
scoreboard players operation $mt.display mt.max_health /= $mt.const mt.score

execute if score @s mt.health < @s mt.max_health run function mobtamer:sys/player/pet/each/status/display/00
execute unless score @s mt.health < @s mt.max_health run function mobtamer:sys/player/pet/each/status/display/01

scoreboard players reset $mt.display mt.health
scoreboard players reset $mt.display mt.max_health
scoreboard players reset $mt.const mt.score
