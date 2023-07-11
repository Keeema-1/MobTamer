loot spawn ~ ~ ~ loot mobtamer:item/gacha/gold
execute as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},nbt=!{PickupDelay:0s},distance=0,limit=1] run data modify entity @s PickupDelay set value 0s
