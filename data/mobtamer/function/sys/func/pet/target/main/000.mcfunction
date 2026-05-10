execute on target if entity @s[team=] run return 1
tag @s add mt.target
execute as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] run function mobtamer:sys/func/pet/target/main/0000
tag @s remove mt.target
