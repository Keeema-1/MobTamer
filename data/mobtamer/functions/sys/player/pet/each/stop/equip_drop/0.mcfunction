# data modify storage mobtamer:temp data.Item.tag.Unbreakable set value 1b

execute if data storage mobtamer:temp data.pet.ArmorItems[3].id run function mobtamer:sys/player/pet/each/stop/equip_drop/head
execute if data storage mobtamer:temp data.pet.ArmorItems[2].id run function mobtamer:sys/player/pet/each/stop/equip_drop/chest
execute if data storage mobtamer:temp data.pet.ArmorItems[1].id run function mobtamer:sys/player/pet/each/stop/equip_drop/legs
execute if data storage mobtamer:temp data.pet.ArmorItems[0].id run function mobtamer:sys/player/pet/each/stop/equip_drop/feet

execute if data storage mobtamer:temp data.pet.HandItems[0].id run function mobtamer:sys/player/pet/each/stop/equip_drop/mainhand
execute if data storage mobtamer:temp data.pet.HandItems[1].id run function mobtamer:sys/player/pet/each/stop/equip_drop/offhand

playsound item.armor.equip_leather master @a ~ ~ ~ 1 1

data modify entity @s ArmorItems set value [{},{},{},{}]
data modify entity @s HandItems set value [{},{}]
