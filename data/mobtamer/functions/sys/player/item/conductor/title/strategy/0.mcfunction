
execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/title/strategy/selected
execute if entity @e[team=!,tag=mt.player_check,tag=mt.pet] unless entity @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/title/strategy/all
execute unless entity @e[team=!,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：作戦】","color": "light_purple"}]
