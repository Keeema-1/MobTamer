execute if data storage mobtamer:settings data{store_when_sleep:"only_monster"} as @e[team=!,type=#mobtamer:monster,tag=mt.player_check,tag=mt.pet,tag=!mt.down] at @s run function mobtamer:sys/player/pet/each/store/0
execute if data storage mobtamer:settings data{store_when_sleep:"always"} as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.down] at @s run function mobtamer:sys/player/pet/each/store/0

tellraw @s [{"storage": "mobtamer:text","nbt":"data.store.common","interpret": true}]
