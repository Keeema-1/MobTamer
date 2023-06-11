
execute as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：格納】 ","color": "gold"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"Slot","color": "aqua"},{"score":{"name": "@s","objective": "mt.slot"},"color": "aqua"},{"text":"  "},{"selector":"@s"}]
execute unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：格納】  ","color": "gold"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"}]
