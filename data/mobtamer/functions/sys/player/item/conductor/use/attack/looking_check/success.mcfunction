
scoreboard players set $mt.looking_check mt.score 1
tag @s add mt.target
function mobtamer:sys/player/item/conductor/use/attack/1
tag @s remove mt.target
effect give @s glowing 1 1 true
