
execute on passengers run return 1

execute if entity @s[type=boat] if data entity @s {Type:"acacia"} run summon item ~ ~0.5 ~ {Item:{id:"acacia_boat",Count:1b}}
execute if entity @s[type=boat] if data entity @s {Type:"birch"} run summon item ~ ~0.5 ~ {Item:{id:"birch_boat",Count:1b}}
execute if entity @s[type=boat] if data entity @s {Type:"cherry"} run summon item ~ ~0.5 ~ {Item:{id:"cherry_boat",Count:1b}}
execute if entity @s[type=boat] if data entity @s {Type:"dark_oak"} run summon item ~ ~0.5 ~ {Item:{id:"dark_oak_boat",Count:1b}}
execute if entity @s[type=boat] if data entity @s {Type:"jungle"} run summon item ~ ~0.5 ~ {Item:{id:"jungle_boat",Count:1b}}
execute if entity @s[type=boat] if data entity @s {Type:"mangrove"} run summon item ~ ~0.5 ~ {Item:{id:"mangrove_boat",Count:1b}}
execute if entity @s[type=boat] if data entity @s {Type:"oak"} run summon item ~ ~0.5 ~ {Item:{id:"oak_boat",Count:1b}}
execute if entity @s[type=boat] if data entity @s {Type:"spruce"} run summon item ~ ~0.5 ~ {Item:{id:"spruce_boat",Count:1b}}
execute if entity @s[type=boat] if data entity @s {Type:"bamboo"} run summon item ~ ~0.5 ~ {Item:{id:"bamboo_raft",Count:1b}}

execute if entity @s[type=chest_boat] if data entity @s {Type:"acacia"} run summon item ~ ~0.5 ~ {Item:{id:"acacia_chest_boat",Count:1b}}
execute if entity @s[type=chest_boat] if data entity @s {Type:"birch"} run summon item ~ ~0.5 ~ {Item:{id:"birch_chest_boat",Count:1b}}
execute if entity @s[type=chest_boat] if data entity @s {Type:"cherry"} run summon item ~ ~0.5 ~ {Item:{id:"cherry_chest_boat",Count:1b}}
execute if entity @s[type=chest_boat] if data entity @s {Type:"dark_oak"} run summon item ~ ~0.5 ~ {Item:{id:"dark_oak_chest_boat",Count:1b}}
execute if entity @s[type=chest_boat] if data entity @s {Type:"jungle"} run summon item ~ ~0.5 ~ {Item:{id:"jungle_chest_boat",Count:1b}}
execute if entity @s[type=chest_boat] if data entity @s {Type:"mangrove"} run summon item ~ ~0.5 ~ {Item:{id:"mangrove_chest_boat",Count:1b}}
execute if entity @s[type=chest_boat] if data entity @s {Type:"oak"} run summon item ~ ~0.5 ~ {Item:{id:"oak_chest_boat",Count:1b}}
execute if entity @s[type=chest_boat] if data entity @s {Type:"spruce"} run summon item ~ ~0.5 ~ {Item:{id:"spruce_chest_boat",Count:1b}}
execute if entity @s[type=chest_boat] if data entity @s {Type:"bamboo"} run summon item ~ ~0.5 ~ {Item:{id:"bamboo_chest_raft",Count:1b}}

playsound block.wood.break block @a ~ ~ ~

kill @s 
