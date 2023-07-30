execute if entity @s[type=!ghast,type=!ender_dragon] if entity @a[tag=mt.player_check,distance=5..64] run function mobtamer:sys/player/pet/each/follow/1
execute if entity @s[type=!ghast,type=!ender_dragon] unless entity @a[tag=mt.player_check,distance=5..64] run function mobtamer:sys/player/pet/each/follow/2

execute if entity @s[type=ghast] if entity @a[tag=mt.player_check,distance=10..64] run function mobtamer:sys/player/pet/each/follow/1
execute if entity @s[type=ghast] unless entity @a[tag=mt.player_check,distance=10..64] run function mobtamer:sys/player/pet/each/follow/2
execute if entity @s[type=ender_dragon] if entity @a[tag=mt.player_check,distance=8..64] run function mobtamer:sys/player/pet/each/follow/1
execute if entity @s[type=ender_dragon] unless entity @a[tag=mt.player_check,distance=8..64] run function mobtamer:sys/player/pet/each/follow/2
