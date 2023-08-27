execute on origin unless entity @s[type=player,tag=mt.player_check] run scoreboard players set $mt.weakness.return mt.score 1

execute unless score $mt.weakness.return mt.score matches 1 run function mobtamer:sys/player/weakness/projectile_sub

scoreboard players reset $mt.weakness.return mt.score