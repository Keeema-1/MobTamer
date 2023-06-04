tag @s add mt.player_check
scoreboard players operation $mt.player mt.id = @s mt.id
execute as @e[team=mt.common,type=#mobtamer:can_tame,tag=mt.pet] if score @s mt.id = $mt.player mt.id at @s run tag @s add mt.player_check
execute at @s as @e[team=mt.common,type=#mobtamer:can_tame,tag=mt.player_check,tag=mt.pet,sort=nearest,limit=1] run function mobtamer:sys/player/pet/each/store/0
scoreboard players reset $mt.player
tag @s remove mt.player_check
tag @e[team=mt.common,type=#mobtamer:can_tame,tag=player_check,tag=mt.pet] remove mt.player_check