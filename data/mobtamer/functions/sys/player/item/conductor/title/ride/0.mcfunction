
execute on vehicle if entity @s[tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/title/ride/01
execute on vehicle if entity @s[tag=mt.player_check,tag=mt.pet] run scoreboard players set $mt.ride.return mt.score 1

execute unless score $mt.ride.return mt.score matches 1 if entity @e[team=!,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/title/ride/00
execute unless score $mt.ride.return mt.score matches 1 unless entity @e[team=!,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【","color": "dark_red"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "dark_red"},{"text":"：","color": "dark_red"},{"storage": "mobtamer:text","nbt":"data.mode.ride","interpret": true,"color": "dark_red"},{"text":"】","color": "dark_red"}]

scoreboard players reset $mt.ride.return mt.score