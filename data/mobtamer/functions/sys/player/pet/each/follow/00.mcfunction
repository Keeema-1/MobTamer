# not targeting
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.follow mt.score unless entity @s[tag=mt.targeting] if entity @a[tag=mt.player_check,distance=6..32] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=!ghast,type=!ender_dragon] unless score @s mt.strategy = $mt.strategy.follow mt.score unless entity @s[tag=mt.targeting] if entity @a[tag=mt.player_check,distance=10..32] run function mobtamer:sys/player/pet/each/follow/000

# targeting
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.follow mt.score if entity @s[tag=mt.targeting] if entity @a[tag=mt.player_check,distance=6..32] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=!ghast,type=!ender_dragon] unless score @s mt.strategy = $mt.strategy.follow mt.score if entity @s[tag=mt.targeting] if entity @a[tag=mt.player_check,distance=24..32] run function mobtamer:sys/player/pet/each/follow/000

# ghast
    execute if entity @s[type=ghast] unless entity @s[tag=mt.targeting] if entity @a[tag=mt.player_check,distance=20..64] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=ghast] if entity @s[tag=mt.targeting] if entity @a[tag=mt.player_check,distance=48..64] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=ender_dragon] unless entity @s[tag=mt.targeting] if entity @a[tag=mt.player_check,distance=10..64] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=ender_dragon] if entity @s[tag=mt.targeting] if entity @a[tag=mt.player_check,distance=24..64] run function mobtamer:sys/player/pet/each/follow/000
