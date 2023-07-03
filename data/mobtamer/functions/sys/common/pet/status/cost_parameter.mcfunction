
execute if entity @s[type=#mobtamer:slimes] run data modify storage mobtamer:temp data.pet_status.cost.attack.force set value 1

data modify storage mobtamer:temp data.MainHand set from entity @s HandItems[0]
execute if data storage mobtamer:temp data.MainHand{id:"minecraft:bow"} run data modify storage mobtamer:temp data.pet_status.cost.attack.force set value 5
execute if data storage mobtamer:temp data.MainHand{id:"minecraft:crossbow"} run data modify storage mobtamer:temp data.pet_status.cost.attack.force set value 5
execute if data storage mobtamer:temp data.MainHand{id:"minecraft:trident"} run data modify storage mobtamer:temp data.pet_status.cost.attack.force set value 10

data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 0
execute if entity @s[type=cave_spider] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 1
# execute if entity @s[type=skeleton] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 2
execute if entity @s[type=wither_skeleton] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 2
# execute if entity @s[type=stray] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 2
execute if entity @s[type=witch] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 2
execute if entity @s[type=ghast] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 40
execute if entity @s[type=shulker] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 10
execute if entity @s[type=blaze] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 9
execute if entity @s[type=evoker] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value 19
execute if entity @s[type=panda] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value -2
execute if entity @s[type=frog] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value -6
execute if entity @s[type=warden] run data modify storage mobtamer:temp data.pet_status.cost.attack.add set value -20

execute if entity @s[type=wither] run data modify storage mobtamer:temp data.pet_status.cost.force set value 600

data remove storage mobtamer:temp data.MainHand
