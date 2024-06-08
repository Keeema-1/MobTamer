
# 持ち始め/持ち終わり
execute if entity @s[tag=mt.handitem_was_conductor] unless data storage mobtamer:temp data.player.SelectedItem{components:{"minecraft:custom_data":{mt_conductor:1b}}} unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b,components:{"minecraft:custom_data":{mt_conductor:1b}}}] run function mobtamer:sys/player/item/conductor/was_selecting
execute if entity @s[tag=!mt.handitem_was_conductor] if data storage mobtamer:temp data.player.SelectedItem{components:{"minecraft:custom_data":{mt_conductor:1b}}} run function mobtamer:sys/player/item/conductor/start_selecting
execute if entity @s[tag=!mt.handitem_was_conductor] unless data storage mobtamer:temp data.player.SelectedItem{components:{"minecraft:custom_data":{mt_conductor:1b}}} if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,components:{"minecraft:custom_data":{mt_conductor:1b}}}] run function mobtamer:sys/player/item/conductor/start_selecting

execute if data storage mobtamer:settings data{weakness:"always"} if predicate mobtamer:mainhand/axe if score @s mt.sneak_time matches 1..8 unless predicate mobtamer:is_sneaking if predicate mobtamer:looking_at/weakness_can_itemize/axe at @s anchored eyes positioned ^ ^ ^2 as @e[type=#mobtamer:weakness_can_itemize/axe,distance=..2,sort=nearest,limit=1] at @s run function mobtamer:sys/player/item/axe/0
execute if data storage mobtamer:settings data{weakness:"always"} if predicate mobtamer:mainhand/pickaxe if score @s mt.sneak_time matches 1..8 unless predicate mobtamer:is_sneaking if predicate mobtamer:looking_at/weakness_can_itemize/pickaxe at @s anchored eyes positioned ^ ^ ^2 as @e[type=#mobtamer:weakness_can_itemize/pickaxe,distance=..2,sort=nearest,limit=1] at @s run function mobtamer:sys/player/item/pickaxe/0

execute if score @s mt.dropped.fishing_rod matches 1.. run function mobtamer:sys/player/item/drop/fishing_rod/0
execute if score @s mt.dropped.golden_apple matches 1.. run function mobtamer:sys/player/item/drop/golden_apple/0
execute if score @s mt.dropped.enchanted_golden_apple matches 1.. run function mobtamer:sys/player/item/drop/enchanted_golden_apple/0
execute if score @s mt.dropped.book matches 1.. run function mobtamer:sys/player/item/drop/book/0

tag @s remove mt.handitem_was_conductor

execute if data storage mobtamer:temp data.player.SelectedItem{components:{"minecraft:custom_data":{mt_conductor:1b}}} run function mobtamer:sys/player/item/conductor/0
execute unless score $mt.use_check mt.score matches 1.. if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,components:{"minecraft:custom_data":{mt_conductor:1b}}}] run function mobtamer:sys/player/item/conductor/0

scoreboard players reset $mt.use_check mt.score
