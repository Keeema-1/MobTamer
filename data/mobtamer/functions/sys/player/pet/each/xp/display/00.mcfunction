
data merge entity @s {Duration:60,Radius:0.0f,Effects:[],CustomNameVisible:1b}

execute summon text_display run function mobtamer:sys/player/pet/each/xp/display/000

data modify entity @s CustomName set from storage mobtamer:temp data.CustomName

data remove storage mobtamer:temp data.CustomName
