scoreboard players operation $mt.display mt.health = @s mt.health
scoreboard players operation $mt.display mt.max_health = @s mt.max_health
scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.display mt.health /= $mt.const mt.score
scoreboard players operation $mt.display mt.max_health /= $mt.const mt.score

execute if entity @s[tag=mt.selected] run title @a[tag=mt.player_check] actionbar ["",{"text":"【","color": "green"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "green"},{"text":"：","color": "green"},{"storage": "mobtamer:text","nbt":"data.mode.stop","interpret": true,"color": "green"},{"text":"】 ","color": "green"},{"text":"＜","color": "aqua"},{"storage": "mobtamer:text","nbt":"data.common.selecting","interpret": true,"color": "aqua"},{"text":"＞ ","color": "aqua"},{"selector":"@s"},{"text":"  ♥","color": "red"},{"score":{"name": "$mt.display","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.display","objective": "mt.max_health"}},{"text":"   Exp ","color": "green"},{"score":{"name": "@s","objective": "mt.xp"},"color":"green"}]
execute if entity @s[tag=!mt.selected] run title @a[tag=mt.player_check] actionbar ["",{"text":"【","color": "green"},{"storage": "mobtamer:text","nbt":"data.common.mode","interpret": true,"color": "green"},{"text":"：","color": "green"},{"storage": "mobtamer:text","nbt":"data.mode.stop","interpret": true,"color": "green"},{"text":"】","color": "green"},{"selector":"@s"},{"text":"  ♥","color": "red"},{"score":{"name": "$mt.display","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.display","objective": "mt.max_health"}}]

scoreboard players reset $mt.display mt.health
scoreboard players reset $mt.display mt.max_health
scoreboard players reset $mt.const mt.score
