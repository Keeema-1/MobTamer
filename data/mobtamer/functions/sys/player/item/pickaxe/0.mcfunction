
execute on passengers run return 1

execute if entity @s[type=minecart] run summon item ~ ~0.5 ~ {Item:{id:"minecart",Count:1b}}
execute if entity @s[type=chest_minecart] run summon item ~ ~0.5 ~ {Item:{id:"chest_minecart",Count:1b}}
execute if entity @s[type=furnace_minecart] run summon item ~ ~0.5 ~ {Item:{id:"furnace_minecart",Count:1b}}
execute if entity @s[type=hopper_minecart] run summon item ~ ~0.5 ~ {Item:{id:"hopper_minecart",Count:1b}}

playsound block.wood.break block @a ~ ~ ~

kill @s 
