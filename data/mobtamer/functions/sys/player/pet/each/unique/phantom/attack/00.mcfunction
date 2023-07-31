forceload add 0 0

execute positioned 0. 0. 0. summon marker run function mobtamer:sys/player/pet/each/unique/phantom/attack/000

data modify entity @s Motion[0] set from storage mobtamer:temp data.rot2vec.Pos[0]
data modify entity @s Motion[1] set from storage mobtamer:temp data.rot2vec.Pos[1]
data modify entity @s Motion[2] set from storage mobtamer:temp data.rot2vec.Pos[2]

data remove storage mobtamer:temp data.rot2vec
