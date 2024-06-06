forceload add 0 0

data modify storage mobtamer:temp data.rot2vec.Pos set value [0.0d,-1.0d,0.0d]

execute positioned 0. 0. 0. summon marker run function mobtamer:sys/player/pet/each/unique/ghast/fireball/shoot/000

execute summon fireball run function mobtamer:sys/player/pet/each/unique/ghast/fireball/shoot/001

data remove storage mobtamer:temp data.rot2vec
