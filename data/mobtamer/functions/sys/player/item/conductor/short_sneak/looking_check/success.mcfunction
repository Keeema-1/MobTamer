
scoreboard players set $mt.looking_check mt.score 1

tag @e[team=mt.common,tag=mt.player_check] remove mt.selected

tag @s add mt.selected

data modify entity @s Glowing set value 1b

#effect give @s glowing 1 1 true
