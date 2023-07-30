# not targeting
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.follow mt.score unless predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=6..32] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=!ghast,type=!ender_dragon] unless score @s mt.strategy = $mt.strategy.follow mt.score unless predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=10..32] run function mobtamer:sys/player/pet/each/follow/000

# targeting
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.follow mt.score if predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=6..32] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.attack mt.score if predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=24..32] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.balance mt.score if entity @s[tag=mt.health.red] if predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=6..32] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.balance mt.score if entity @s[tag=!mt.health.red] if predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=24..32] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.recover mt.score if entity @s[tag=mt.health.yellow] if predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=6..32] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=!ghast,type=!ender_dragon] if score @s mt.strategy = $mt.strategy.recover mt.score if entity @s[tag=!mt.health.yellow] if predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=24..32] run function mobtamer:sys/player/pet/each/follow/000

# ghast
    execute if entity @s[type=ghast] unless predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=20..64] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=ghast] if predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=48..64] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=ender_dragon] unless predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=10..64] run function mobtamer:sys/player/pet/each/follow/000
    execute if entity @s[type=ender_dragon] if predicate mobtamer:targeting if entity @a[tag=mt.player_check,distance=24..64] run function mobtamer:sys/player/pet/each/follow/000
