
execute on attacker if entity @s[type=player,tag=mt.player_check] run scoreboard players set $mt.check mt.score 1

execute if score $mt.check mt.score matches 1.. run function mobtamer:sys/player/advancement/player_hurt_entity/any/2

scoreboard players reset $mt.check mt.score
