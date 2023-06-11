execute if entity @s[predicate=!mobtamer:vehicle/any] run function mobtamer:sys/player/pet/each/tp/0
execute at @s[tag=!mt.stop,predicate=!mobtamer:vehicle/any] run function mobtamer:sys/player/pet/each/follow/0
execute at @s[type=#mobtamer:can_revenge,tag=!mt.stop] run function mobtamer:sys/player/pet/each/be_hostile/0
execute at @s run function mobtamer:sys/player/pet/each/name/0
function mobtamer:sys/player/pet/each/status/0
