execute if entity @s[predicate=!mobtamer:vehicle/any] run function mobtamer:sys/player/pet/each/tp/0
execute at @s[tag=!mt.stop,predicate=!mobtamer:vehicle/any] run function mobtamer:sys/player/pet/each/follow/0
execute at @s[type=#mobtamer:can_revenge,tag=!mt.stop] run function mobtamer:sys/player/pet/each/be_hostile/0
execute at @s run function mobtamer:sys/player/pet/each/name/0
function mobtamer:sys/player/pet/each/status/0
execute at @s[tag=mt.stop] run function mobtamer:sys/player/pet/each/stop/0

execute if entity @s[type=#mobtamer:vulnerable_to_water] if block ~ ~ ~ water if block ~ ~1 ~ water at @a[tag=mt.player_check,limit=1] run function mobtamer:sys/player/pet/each/store/anounce/vulnerable_to_water
