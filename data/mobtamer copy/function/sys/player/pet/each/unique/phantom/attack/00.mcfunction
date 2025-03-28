forceload add 0 0

execute positioned 0. 0. 0. summon marker run function mobtamer:sys/player/pet/each/unique/phantom/attack/000

data modify entity @s Motion set from storage mobtamer:temp data.rot2vec.Pos

data remove storage mobtamer:temp data.rot2vec
