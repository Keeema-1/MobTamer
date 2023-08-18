
execute if score $mt.xp.add.killer mt.score matches 1.. at @e[team=!,tag=mt.killer_check,tag=mt.player_check,tag=mt.pet,limit=1] anchored eyes positioned ^ ^0.5 ^ summon area_effect_cloud run function mobtamer:sys/player/pet/each/xp/display/00

execute if score $mt.xp.add mt.score matches 1.. as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.killer_check] at @s anchored eyes positioned ^ ^0.5 ^ summon area_effect_cloud run function mobtamer:sys/player/pet/each/xp/display/01
