# execute unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] if entity @e[team=mt.common,tag=mt.player_check,tag=mt.pet,limit=1] run function mobtamer:sys/player/item/conductor/title/info/00
execute unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run function mobtamer:sys/player/item/conductor/title/info/00
execute if entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] run function mobtamer:sys/player/item/conductor/title/info/01
# execute unless entity @e[team=mt.common,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：情報】 ","color": "green"}]
