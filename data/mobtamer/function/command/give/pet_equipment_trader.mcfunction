loot spawn ~ ~ ~ loot mobtamer:item/pet_equipment_trader
execute as @e[type=item,nbt={Item:{id:"minecraft:wandering_trader_spawn_egg"}},nbt=!{PickupDelay:0s},distance=0,limit=1] run data modify entity @s PickupDelay set value 0s
