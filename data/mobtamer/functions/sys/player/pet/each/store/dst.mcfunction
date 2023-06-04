
data modify entity @s Item set from storage mobtamer:temp data.Item

data merge entity @s {PickupDelay:0}

tp @s @a[tag=mt.player_check,limit=1]
