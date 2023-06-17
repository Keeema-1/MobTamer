execute if entity @s[tag=mt.handitem_was_conductor] anchored eyes positioned ^ ^ ^ as @e[type=item,distance=..2] if data entity @s Item.tag{mt_conductor:1b} run function mobtamer:sys/player/item/drop/fishing_rod/conductor/0

scoreboard players reset @s mt.dropped.fishing_rod