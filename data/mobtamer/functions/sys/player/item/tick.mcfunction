
execute if score @s mt.dropped.fishing_rod matches 1.. run function mobtamer:sys/player/item/drop/fishing_rod/0
execute if score @s mt.dropped.golden_apple matches 1.. run function mobtamer:sys/player/item/drop/golden_apple/0

tag @s remove mt.handitem_was_conductor

execute if data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} run function mobtamer:sys/player/item/conductor/0
execute unless score $mt.use_check mt.score matches 1.. if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}] run function mobtamer:sys/player/item/conductor/0

scoreboard players reset $mt.use_check mt.score
