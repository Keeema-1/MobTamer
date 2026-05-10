
execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet,distance=..64] run return run function mobtamer:sys/func/item/conductor/title/strategy/selected
execute if entity @e[team=!,tag=mt.player_check,tag=mt.pet,distance=..64] run return run function mobtamer:sys/func/item/conductor/title/strategy/all
title @a[tag=mt.player_check] actionbar ["",{"text":"【","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "light_purple"},{"text":"：","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.mode.strategy","interpret": true,"color": "light_purple"},{"text":"】","color": "light_purple"}]
