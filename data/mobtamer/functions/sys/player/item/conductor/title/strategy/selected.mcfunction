
scoreboard players operation $mt.strategy mt.score = @s mt.strategy

function mobtamer:sys/player/item/conductor/title/strategy/selected_strategy

# title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"selector":"@s"}]
execute if score $mt.strategy mt.score = $mt.strategy.attack mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"selector":"@s"},{"text":"  [攻撃優先]","color": "red"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.balance mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"selector":"@s"},{"text":"  [バランス]","color": "aqua"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.recover mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"selector":"@s"},{"text":"  [回復優先]","color": "green"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.follow mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【モード：作戦】 ","color": "light_purple"},{"text":"＜選択中＞ ","color": "aqua"},{"selector":"@s"},{"text":"  [追従優先]","color": "yellow"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]

scoreboard players reset $mt.strategy mt.score