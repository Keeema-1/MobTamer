execute if entity @s[type=!ghast] if entity @a[tag=mt.player_check,distance=5..64] run function mobtamer:sys/player/pet/each/follow/1
execute if entity @s[type=!ghast] unless entity @a[tag=mt.player_check,distance=5..64] run function mobtamer:sys/player/pet/each/follow/2

execute if entity @s[type=ghast] if entity @a[tag=mt.player_check,distance=12..64] run function mobtamer:sys/player/pet/each/follow/1
execute if entity @s[type=ghast] unless entity @a[tag=mt.player_check,distance=12..64] run function mobtamer:sys/player/pet/each/follow/2
