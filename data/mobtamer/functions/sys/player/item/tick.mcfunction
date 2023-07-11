
# 持ち始め/持ち終わり
execute if entity @s[tag=mt.handitem_was_conductor] unless data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}] run function mobtamer:sys/player/item/conductor/was_selecting
execute if entity @s[tag=!mt.handitem_was_conductor] if data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} run function mobtamer:sys/player/item/conductor/start_selecting
execute if entity @s[tag=!mt.handitem_was_conductor] unless data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}] run function mobtamer:sys/player/item/conductor/start_selecting

execute if score @s mt.dropped.fishing_rod matches 1.. run function mobtamer:sys/player/item/drop/fishing_rod/0
execute if score @s mt.dropped.golden_apple matches 1.. run function mobtamer:sys/player/item/drop/golden_apple/0
execute if score @s mt.dropped.knowledge_book matches 1.. run function mobtamer:sys/player/item/drop/knowledge_book/0

tag @s remove mt.handitem_was_conductor

execute if data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} run function mobtamer:sys/player/item/conductor/0
execute unless score $mt.use_check mt.score matches 1.. if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}] run function mobtamer:sys/player/item/conductor/0

scoreboard players reset $mt.use_check mt.score
