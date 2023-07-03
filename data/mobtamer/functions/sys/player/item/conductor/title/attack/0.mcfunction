
execute as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：攻撃】 ","color": "red"},{"text":"＜選択中＞ ","color": "aqua"},{"selector":"@s"}]
execute unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：攻撃】  ","color": "red"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"}]
