# execute unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] as @e[team=mt.common,tag=mt.player_check,tag=mt.pet,sort=nearest,limit=1] run function mobtamer:sys/player/item/conductor/title/info/1
execute if entity @e[team=mt.common,tag=mt.player_check,tag=mt.pet,limit=1] unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：強化】 ","color": "aqua"},{"text":"選択なし"}]
execute if entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：強化】 ","color": "aqua"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"Slot","color": "aqua"},{"score":{"name": "@s","objective": "mt.slot"},"color": "aqua"},{"text":"  "},{"selector":"@s"}]
execute unless entity @e[team=mt.common,tag=mt.player_check,tag=mt.pet,limit=1] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：強化】 ","color": "aqua"}]
