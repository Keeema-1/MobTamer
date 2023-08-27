execute on target if entity @s[team=] run scoreboard players set $mt.be_hostile0.return mt.score 1
tag @s add mt.target
execute unless score $mt.be_hostile0.return mt.score matches 1 as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] run function mobtamer:sys/common/pet/be_hostile
tag @s remove mt.target
scoreboard players reset $mt.be_hostile0.return mt.score