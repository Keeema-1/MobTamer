
function mobtamer:sys/common/pet/tp/0_

execute if entity @s[tag=mt.flying] as @e[team=!,tag=mt.tp_pet] run function mobtamer:sys/common/pet/tp/flying
