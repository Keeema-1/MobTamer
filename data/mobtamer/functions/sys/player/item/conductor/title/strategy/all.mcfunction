
scoreboard players operation $mt.strategy mt.score = @e[team=!,tag=mt.player_check,tag=mt.pet,limit=1] mt.strategy
execute if score $mt.strategy mt.score matches 0 as @e[team=!,tag=mt.player_check,tag=mt.pet] if score @s mt.strategy matches 1.. run scoreboard players set $mt.strategy mt.score -1
execute if score $mt.strategy mt.score matches 1.. as @e[team=!,tag=mt.player_check,tag=mt.pet] unless score @s mt.strategy = $mt.strategy mt.score run scoreboard players set $mt.strategy mt.score -1

function mobtamer:sys/player/item/conductor/title/strategy/selected_strategy

# title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"}]
execute if score $mt.strategy mt.score matches -1 run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"},{"text":"  [個別]","color": "white"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.attack mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"},{"text":"  [攻撃優先]","color": "red"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.balance mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"},{"text":"  [バランス]","color": "aqua"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.recover mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"},{"text":"  [回復優先]","color": "green"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.follow mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"text":"すべてのペット","color": "white"},{"text":"  [追従優先]","color": "yellow"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]

scoreboard players reset $mt.strategy mt.score