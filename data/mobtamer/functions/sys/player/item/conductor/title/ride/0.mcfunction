
execute on vehicle if entity @s[tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/title/ride/01
execute on vehicle if entity @s[tag=mt.player_check,tag=mt.pet] run return 1

execute if entity @e[team=!,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/title/ride/00
execute unless entity @e[team=!,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：騎乗】","color": "dark_red"}]
