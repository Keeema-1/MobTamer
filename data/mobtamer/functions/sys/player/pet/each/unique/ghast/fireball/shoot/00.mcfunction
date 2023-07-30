forceload add 0 0

summon marker 0. 0. 0. {Tags:["mt.rot2vec"]}

execute positioned 0. 0. 0. as @e[type=marker,tag=mt.rot2vec,distance=..1,limit=1] run function mobtamer:sys/player/pet/each/unique/ghast/fireball/shoot/000

execute summon fireball run function mobtamer:sys/player/pet/each/unique/ghast/fireball/shoot/001

data remove storage mobtamer:temp data.rot2vec
