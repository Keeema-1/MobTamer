execute if entity @a[distance=..8] run schedule function mobtamer:sys/schedule/data_transfer/0 1t replace

data modify storage mobtamer_transfer:data data.Items set from entity @s Items

execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~

data merge entity @s {Motion:[0.0d,0.0d,0.0d],Rotation:[0.0f,0.0f]}

execute unless entity @a[distance=..8] run particle poof ~ ~ ~ 0 0 0 0.1 10
execute unless entity @a[distance=..8] run data remove entity @s Items
execute unless entity @a[distance=..8] run kill @s
