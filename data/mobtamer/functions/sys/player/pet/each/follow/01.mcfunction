execute if entity @a[tag=mt.player_check,distance=5..64] run function mobtamer:sys/player/pet/each/follow/1
execute unless entity @a[tag=mt.player_check,distance=5..64] run function mobtamer:sys/player/pet/each/follow/2
