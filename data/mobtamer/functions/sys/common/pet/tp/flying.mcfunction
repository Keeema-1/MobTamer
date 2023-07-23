
execute if entity @s[type=#mobtamer:can_fly] at @s facing entity @a[tag=mt.player_check,limit=1] eyes rotated ~ 0 positioned as @a[tag=mt.player_check,limit=1] positioned ^ ^ ^-2 run function mobtamer:sys/common/pet/tp/flying1
execute if data entity @s ArmorItems[{id:"minecraft:elytra"}] at @s facing entity @a[tag=mt.player_check,limit=1] eyes rotated ~ 0 positioned as @a[tag=mt.player_check,limit=1] positioned ^ ^ ^-2 run function mobtamer:sys/common/pet/tp/flying1
