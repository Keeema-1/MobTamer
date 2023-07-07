execute if block ~ ~ ~ #minecraft:beds run function mobtamer:sys/player/bed/00
execute if block ~ ~ ~ #minecraft:beds run return 1
execute rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:beds run function mobtamer:sys/player/bed/00
