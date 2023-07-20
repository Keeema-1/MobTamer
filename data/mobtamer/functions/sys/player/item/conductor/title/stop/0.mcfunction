
execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：停止】 ","color": "blue"},{"text":"＜選択中＞ ","color": "aqua"},{"selector":"@s"}]
execute if entity @e[team=!,tag=mt.player_check,tag=mt.pet] unless entity @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：停止】  ","color": "blue"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"}]
execute unless entity @e[team=!,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：停止】","color": "blue"}]
