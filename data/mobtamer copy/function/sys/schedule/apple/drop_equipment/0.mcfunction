
data modify storage mobtamer:temp data.target.ArmorDropChances set from entity @s ArmorDropChances
data modify storage mobtamer:temp data.target.HandDropChances set from entity @s HandDropChances
data modify storage mobtamer:temp data.target.ArmorItems set from entity @s ArmorItems
data modify storage mobtamer:temp data.target.HandItems set from entity @s HandItems
data modify storage mobtamer:temp data.target.DropChances.head set from storage mobtamer:temp data.target.ArmorDropChances[3]
data modify storage mobtamer:temp data.target.DropChances.chest set from storage mobtamer:temp data.target.ArmorDropChances[2]
data modify storage mobtamer:temp data.target.DropChances.legs set from storage mobtamer:temp data.target.ArmorDropChances[1]
data modify storage mobtamer:temp data.target.DropChances.heet set from storage mobtamer:temp data.target.ArmorDropChances[0]
data modify storage mobtamer:temp data.target.DropChances.mainhand set from storage mobtamer:temp data.target.HandDropChances[0]
data modify storage mobtamer:temp data.target.DropChances.offhand set from storage mobtamer:temp data.target.HandDropChances[1]

data modify storage mobtamer:temp data.target.DropChance set from storage mobtamer:temp data.target.ArmorDropChances[3]
data modify storage mobtamer:temp data.target.DropItem set from storage mobtamer:temp data.target.ArmorItems[3]
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run function mobtamer:sys/schedule/apple/drop_equipment/00
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run item replace entity @s armor.head with air

data modify storage mobtamer:temp data.target.DropChance set from storage mobtamer:temp data.target.ArmorDropChances[2]
data modify storage mobtamer:temp data.target.DropItem set from storage mobtamer:temp data.target.ArmorItems[2]
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run function mobtamer:sys/schedule/apple/drop_equipment/00
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run item replace entity @s armor.chest with air

data modify storage mobtamer:temp data.target.DropChance set from storage mobtamer:temp data.target.ArmorDropChances[1]
data modify storage mobtamer:temp data.target.DropItem set from storage mobtamer:temp data.target.ArmorItems[1]
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run function mobtamer:sys/schedule/apple/drop_equipment/00
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run item replace entity @s armor.legs with air

data modify storage mobtamer:temp data.target.DropChance set from storage mobtamer:temp data.target.ArmorDropChances[0]
data modify storage mobtamer:temp data.target.DropItem set from storage mobtamer:temp data.target.ArmorItems[0]
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run function mobtamer:sys/schedule/apple/drop_equipment/00
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run item replace entity @s armor.feet with air

data modify storage mobtamer:temp data.target.DropChance set from storage mobtamer:temp data.target.HandDropChances[0]
data modify storage mobtamer:temp data.target.DropItem set from storage mobtamer:temp data.target.HandItems[0]
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run function mobtamer:sys/schedule/apple/drop_equipment/00
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run item replace entity @s weapon.mainhand with air

data modify storage mobtamer:temp data.target.DropChance set from storage mobtamer:temp data.target.HandDropChances[1]
data modify storage mobtamer:temp data.target.DropItem set from storage mobtamer:temp data.target.HandItems[1]
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run function mobtamer:sys/schedule/apple/drop_equipment/00
execute if data storage mobtamer:temp data.target{DropChance:2.0f} run item replace entity @s weapon.offhand with air

data remove storage mobtamer:temp data.target