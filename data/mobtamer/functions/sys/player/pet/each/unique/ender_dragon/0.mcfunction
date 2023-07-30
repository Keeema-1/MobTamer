
# https://minecraft.fandom.com/ja/wiki/%E3%82%A8%E3%83%B3%E3%83%80%E3%83%BC%E3%83%89%E3%83%A9%E3%82%B4%E3%83%B3/ED

execute if entity @s[tag=mt.following] run data modify entity @s DragonPhase set value 10
execute if entity @s[tag=!mt.following] run data modify entity @s DragonPhase set value 6

execute if entity @s[tag=!mt.following] unless predicate mobtamer:passenger_exists at @s positioned ~-6 ~-3 ~-6 if entity @a[dx=11,dy=5,dz=11,limit=1] at @s facing entity @p eyes run tp @s ^ ^ ^-0.3

execute at @s if entity @s[tag=mt.following] positioned ~-1 ~-32 ~-1 unless entity @a[tag=mt.player_check,dx=1,dy=64,dz=1,limit=1] at @s facing entity @a[tag=mt.player_check,limit=1] eyes run tp @s ~ ~ ~ ~180 ~
