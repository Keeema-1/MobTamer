
data merge entity @s {PickupDelay:0,Age:0,CustomNameVisible:0b,Glowing:0b}
data remove entity @s CustomName

execute on passengers run kill @s
kill @e[tag=mt.interaction.power_up,distance=..4]

particle poof ~ ~ ~ 0.3 0.6 0.3 0.1 20

playsound entity.item.pickup master @a ~ ~ ~ 1 1
playsound entity.item.pickup master @a ~ ~ ~ 1 1
playsound entity.item.pickup master @a ~ ~ ~ 1 1
playsound entity.item.pickup master @a ~ ~ ~ 1 1

tp @s @a[tag=mt.player_check,limit=1]

tag @s remove mt.egg.power_up
