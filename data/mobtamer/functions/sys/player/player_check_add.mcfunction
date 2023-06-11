scoreboard players operation $mt.player mt.id = @s mt.id
tag @s add mt.player_check
execute as @e[team=mt.common,tag=mt.pet,type=#mobtamer:can_tame] if score @s mt.id = $mt.player mt.id run tag @s add mt.player_check
