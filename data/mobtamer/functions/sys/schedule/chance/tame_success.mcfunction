scoreboard players reset @s mt.score
effect clear @s fire_resistance
effect clear @s glowing
# scoreboard players operation $mt.player mt.id = @s mt.id
# execute as @a if score @s mt.id = $mt.player mt.id run tag @s add mt.player_check
# tag @s add mt.player_check
# execute as @e[team=mt.common,type=#mobtamer:can_tame,tag=mt.pet] if score @s mt.id = $mt.player mt.id at @s run tag @s add mt.player_check
function mobtamer:sys/tame/success/common/0
# scoreboard players reset $mt.player mt.id
# tag @a remove mt.player_check
# tag @s remove mt.player_check
# tag @e[team=mt.common,type=#mobtamer:can_tame,tag=player_check,tag=mt.pet] remove mt.player_check
