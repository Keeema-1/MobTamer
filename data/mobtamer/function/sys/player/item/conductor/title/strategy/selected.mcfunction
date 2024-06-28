
scoreboard players operation $mt.strategy mt.score = @s mt.strategy

function mobtamer:sys/player/item/conductor/title/strategy/selected_strategy

execute if score $mt.strategy mt.score = $mt.strategy.attack mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "light_purple"},{"text":"：","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.mode.strategy","interpret": true,"color": "light_purple"},{"text":"】 ","color": "light_purple"},{"text":"＜","color": "aqua"},{"storage": "mobtamer:text","nbt":"data.common.selecting","interpret": true,"color": "aqua"},{"text":"＞ ","color": "aqua"},{"selector":"@s"},{"text":"  [","color": "red"},{"storage": "mobtamer:text","nbt":"data.strategy.attack","interpret": true,"color": "red"},{"text":"]","color": "red"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.balance mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "light_purple"},{"text":"：","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.mode.strategy","interpret": true,"color": "light_purple"},{"text":"】 ","color": "light_purple"},{"text":"＜","color": "aqua"},{"storage": "mobtamer:text","nbt":"data.common.selecting","interpret": true,"color": "aqua"},{"text":"＞ ","color": "aqua"},{"selector":"@s"},{"text":"  [","color": "aqua"},{"storage": "mobtamer:text","nbt":"data.strategy.balance","interpret": true,"color": "aqua"},{"text":"]","color": "aqua"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.recover mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "light_purple"},{"text":"：","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.mode.strategy","interpret": true,"color": "light_purple"},{"text":"】 ","color": "light_purple"},{"text":"＜","color": "aqua"},{"storage": "mobtamer:text","nbt":"data.common.selecting","interpret": true,"color": "aqua"},{"text":"＞ ","color": "aqua"},{"selector":"@s"},{"text":"  [","color": "green"},{"storage": "mobtamer:text","nbt":"data.strategy.recover","interpret": true,"color": "green"},{"text":"]","color": "green"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]
execute if score $mt.strategy mt.score = $mt.strategy.follow mt.score run title @a[tag=mt.player_check,limit=1] actionbar ["",{"text":"【","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "light_purple"},{"text":"：","color": "light_purple"},{"storage": "mobtamer:text","nbt":"data.mode.strategy","interpret": true,"color": "light_purple"},{"text":"】 ","color": "light_purple"},{"text":"＜","color": "aqua"},{"storage": "mobtamer:text","nbt":"data.common.selecting","interpret": true,"color": "aqua"},{"text":"＞ ","color": "aqua"},{"selector":"@s"},{"text":"  [","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.strategy.follow","interpret": true,"color": "yellow"},{"text":"]","color": "yellow"},{"storage":"mobtamer:temp","nbt":"data.selected_strategy","interpret": true}]

scoreboard players reset $mt.strategy mt.score