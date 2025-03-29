scoreboard players operation #mt.player_id mt.temp = @s mt.id
tag @s add mt.player_check
execute as @e[team=!,type=#mobtamer:can_tame,tag=mt.pet] if score @s mt.id = #mt.player_id mt.temp run tag @s add mt.player_check
