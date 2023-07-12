data modify storage mobtamer:temp data.Item.tag.Unbreakable set value 1b

execute if data storage mobtamer:temp data.Item.tag{mt_equipment_part:"head"} run function mobtamer:sys/player/pet/each/stop/equip_change/head
execute if data storage mobtamer:temp data.Item.tag{mt_equipment_part:"chest"} run function mobtamer:sys/player/pet/each/stop/equip_change/chest
execute if data storage mobtamer:temp data.Item.tag{mt_equipment_part:"legs"} run function mobtamer:sys/player/pet/each/stop/equip_change/legs
execute if data storage mobtamer:temp data.Item.tag{mt_equipment_part:"feet"} run function mobtamer:sys/player/pet/each/stop/equip_change/feet
execute if data storage mobtamer:temp data.Item.tag{mt_equipment_part:"mainhand"} run function mobtamer:sys/player/pet/each/stop/equip_change/mainhand

playsound item.armor.equip_leather master @a ~ ~ ~ 1 1

advancement grant @a[tag=mt.player_check,limit=1] only mobtamer:mobtamer/first_equipment