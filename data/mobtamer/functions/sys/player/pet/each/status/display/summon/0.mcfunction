tag @s add mt.display_exist

summon area_effect_cloud ^ ^0.4 ^ {Duration:1200,Radius:0.0f,Effects:[],Tags:["mt.new"],Passengers:[{id:"text_display",transformation:{translation:[0.0f,0.0f,0.0f]},billboard:"vertical"}]}

execute positioned ^ ^ ^ as @e[type=area_effect_cloud,tag=mt.new,distance=..2] run function mobtamer:sys/player/pet/each/status/display/summon/00
