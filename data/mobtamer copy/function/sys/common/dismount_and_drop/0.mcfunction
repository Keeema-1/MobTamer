
playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 1 1

execute if data entity @s {Type:"acacia"} run summon item ~ ~0.1 ~ {Item:{id:"acacia_boat",Count:1b}}
execute if data entity @s {Type:"birch"} run summon item ~ ~0.1 ~ {Item:{id:"birch_boat",Count:1b}}
execute if data entity @s {Type:"cherry"} run summon item ~ ~0.1 ~ {Item:{id:"cherry_boat",Count:1b}}
execute if data entity @s {Type:"dark_oak"} run summon item ~ ~0.1 ~ {Item:{id:"dark_oak_boat",Count:1b}}
execute if data entity @s {Type:"jungle"} run summon item ~ ~0.1 ~ {Item:{id:"jungle_boat",Count:1b}}
execute if data entity @s {Type:"mangrove"} run summon item ~ ~0.1 ~ {Item:{id:"mangrove_boat",Count:1b}}
execute if data entity @s {Type:"oak"} run summon item ~ ~0.1 ~ {Item:{id:"oak_boat",Count:1b}}
execute if data entity @s {Type:"spruce"} run summon item ~ ~0.1 ~ {Item:{id:"spruce_boat",Count:1b}}
execute if data entity @s {Type:"bamboo"} run summon item ~ ~0.1 ~ {Item:{id:"bamboo_raft",Count:1b}}

execute if entity @s[type=minecart] run summon item ~ ~0.1 ~ {Item:{id:"minecart",Count:1b}}

kill @s