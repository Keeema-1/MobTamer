
execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：格納】 ","color": "gold"},{"text":"＜選択中＞ ","color": "aqua"},{"selector":"@s"}]
execute if entity @e[team=!,tag=mt.player_check,tag=mt.pet,limit=1] unless entity @e[team=!,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：格納】  ","color": "gold"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"}]
execute unless entity @e[team=!,tag=mt.player_check,tag=mt.pet,limit=1] run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：格納】","color": "gold"}]
