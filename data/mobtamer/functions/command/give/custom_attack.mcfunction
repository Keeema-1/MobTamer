loot spawn ~ ~ ~ loot mobtamer:item/custom_attack
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow"}},nbt=!{PickupDelay:0s},distance=0,limit=1] run data modify entity @s PickupDelay set value 0s
