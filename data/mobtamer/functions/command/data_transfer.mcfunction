execute if entity @e[type=chest_minecart,tag=mt.data_transfer] run tellraw @s [{"storage": "mobtamer:text","nbt":"data.data_transfer.cannot","interpret": true}]

execute unless entity @e[type=chest_minecart,tag=mt.data_transfer] run tellraw @s [{"storage": "mobtamer:text","nbt":"data.data_transfer.explain","interpret": true}]
execute unless entity @e[type=chest_minecart,tag=mt.data_transfer] rotated ~ 0 positioned ^ ^0.1 ^2 align xyz positioned ~0.5 ~0.5 ~0.5 run summon chest_minecart ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["mt.data_transfer"],CustomName:'"データ移行用エンティティ"',CustomNameVisible:1b}

execute as @e[type=chest_minecart,tag=mt.data_transfer] run data modify entity @s Items set from storage mobtamer_transfer:data data.Items

schedule function mobtamer:sys/schedule/data_transfer/0 1t replace
