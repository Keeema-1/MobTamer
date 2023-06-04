tag @s add mt.player_check
scoreboard players operation $mt.player mt.id = @s mt.id
execute as @e[team=mt.common,type=#mobtamer:can_tame,tag=mt.pet] if score @s mt.id = $mt.player mt.id at @s run tag @s add mt.player_check
execute summon zombie run function mobtamer:sys/tame/success/common/0
scoreboard players reset $mt.player
tag @s remove mt.player_check
tag @e[team=mt.common,type=#mobtamer:can_tame,tag=player_check,tag=mt.pet] remove mt.player_check