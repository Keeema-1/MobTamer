loot spawn ~ ~ ~ loot mobtamer:item/cheat
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book"}},nbt=!{PickupDelay:0s},distance=0,limit=1] run data modify entity @s PickupDelay set value 0s
