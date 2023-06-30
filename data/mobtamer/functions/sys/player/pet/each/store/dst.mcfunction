
data modify entity @s Item set from storage mobtamer:temp data.Item

data merge entity @s {PickupDelay:0}

execute if score $mt.store.when_power_up mt.score matches 1.. run function mobtamer:sys/player/pet/each/store/when_power_up/0

execute unless score $mt.store.when_power_up mt.score matches 1.. run tp @s @a[tag=mt.player_check,limit=1]
