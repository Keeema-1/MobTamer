execute on passengers if entity @s[tag=mt.logout_display] run return 1
scoreboard players operation $mt.pet.id mt.score = @s mt.id
execute as @a if score @s mt.id = $mt.pet.id mt.score run return 1

tag @s add mt.logout
data merge entity @s {NoAI:1b,Invulnerable:1b,Silent:1b}

tag @s add mt.logout_check
summon text_display ~ ~ ~ {Tags:["mt.new"]}
execute as @e[type=text_display,tag=mt.new,limit=1] run function mobtamer:sys/logout/display
tag @s remove mt.logout_check

tag @e[type=text_display,tag=mt.new,limit=1] remove mt.new
