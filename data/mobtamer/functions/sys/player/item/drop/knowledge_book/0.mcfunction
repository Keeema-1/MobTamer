
execute anchored eyes positioned ^ ^ ^ as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book",tag:{mt_gacha:1b}}},distance=..2] run function mobtamer:sys/player/item/drop/knowledge_book/00

scoreboard players reset @s mt.dropped.knowledge_book
