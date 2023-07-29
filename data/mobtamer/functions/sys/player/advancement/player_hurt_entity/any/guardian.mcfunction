tag @s add mt.pet_check
execute as @e[tag=mt.target,limit=1] run function mobtamer:sys/player/pet/each/unique/guardian/beam/start/000
tag @s remove mt.pet_check