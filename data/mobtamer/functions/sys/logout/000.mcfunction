
tag @s add mt.logout
data merge entity @s {NoAI:1b,Invulnerable:1b,Silent:1b}

tag @s add mt.logout_check
summon text_display ~ ~ ~ {Tags:["mt.new"]}
execute as @e[type=text_display,tag=mt.new,limit=1] run function mobtamer:sys/logout/display
tag @s remove mt.logout_check

tag @e[type=text_display,tag=mt.new,limit=1] remove mt.new
