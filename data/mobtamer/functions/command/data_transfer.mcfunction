execute if entity @e[type=chest_minecart,tag=mt.data_transfer] run tellraw @a {"text":"データ移行用エンティティはワールド上に2つ以上設置できません。","color":"red"}

execute unless entity @e[type=chest_minecart,tag=mt.data_transfer] run tellraw @a [{"text": "このエンティティにアイテムを入れ、ワールドフォルダの","color": "yellow"},{"text": "data","color": "green"},{"text": "フォルダにある","color": "yellow"},{"text": "command_storage_mobtamer_transfer.dat","color": "green"},{"text": "を移行先の同じ場所にコピーして移行することができます。","color": "yellow"}]
execute unless entity @e[type=chest_minecart,tag=mt.data_transfer] rotated ~ 0 positioned ^ ^0.1 ^2 align xyz positioned ~0.5 ~0.5 ~0.5 run summon chest_minecart ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["mt.data_transfer"],CustomName:'"データ移行用エンティティ"',CustomNameVisible:1b,NoAI:1b}

execute as @e[type=chest_minecart,tag=mt.data_transfer] run data modify entity @s Items set from storage mobtamer_transfer:data data.Items

schedule function mobtamer:sys/schedule/data_transfer/0 1t replace
