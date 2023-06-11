tag @s add mt.target
execute as @e[team=mt.common,tag=mt.pet_check,tag=mt.pet] run function mobtamer:sys/common/pet/be_hostile
tag @s remove mt.target