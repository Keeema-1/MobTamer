loot spawn ~ ~ ~ loot mobtamer:item/pet_release
execute as @e[type=item,nbt={Item:{id:"minecraft:feather"}},nbt=!{PickupDelay:0s},distance=0,limit=1] run data modify entity @s PickupDelay set value 0s
