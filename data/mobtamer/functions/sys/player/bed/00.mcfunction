execute if data storage mobtamer:settings data{store_when_sleep:"only_monster"} as @e[team=mt.common,type=#mobtamer:monster,tag=mt.player_check,tag=mt.pet] at @s run function mobtamer:sys/player/pet/each/store/0
execute if data storage mobtamer:settings data{store_when_sleep:"always"} as @e[team=mt.common,tag=mt.player_check,tag=mt.pet] at @s run function mobtamer:sys/player/pet/each/store/0

tellraw @s [{"text":"ペットがアイテム化されました。","color": "yellow"}]