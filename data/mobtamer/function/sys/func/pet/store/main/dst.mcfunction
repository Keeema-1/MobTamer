
data modify entity @s Item merge from storage mobtamer:temp data.Item

data merge entity @s {PickupDelay:0,Glowing:1b}

execute if data storage mobtamer:temp data.Item.components."minecraft:custom_data".mobtamer.status{health:0.0f} run data modify storage mobtamer:temp data.Item.components."minecraft:use_cooldown" set value {seconds:10}

# execute if score #mt.store.when_power_up mt.score matches 1.. run function mobtamer:sys/player/pet/each/store/when_power_up/0

# execute unless score #mt.store.when_power_up mt.score matches 1.. run tp @s @a[tag=mt.player_check,limit=1]
