execute on passengers if entity @s[tag=mt.target_record_entity] run scoreboard players set $mt.phe.return mt.score 1
tag @s add mt.pet_check
execute unless score $mt.phe.return mt.score matches 1 as @e[tag=mt.target,limit=1] run function mobtamer:sys/player/pet/each/unique/custom_attack/target_start/000
tag @s remove mt.pet_check

scoreboard players reset $mt.phe.return mt.score
