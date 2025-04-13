
execute on origin run function mobtamer:sys/func/pet/status_display/update/pet/0

tag @s add mt.check
execute on origin anchored eyes at @s run tp @e[type=area_effect_cloud,tag=mt.check,limit=1] ^ ^0.4 ^
data modify entity @s Air set from entity @s Age
tag @s remove mt.check
