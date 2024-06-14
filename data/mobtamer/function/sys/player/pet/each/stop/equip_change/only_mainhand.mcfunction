data modify storage mobtamer:temp data.Item.components.Unbreakable set value 1b

function mobtamer:sys/player/pet/each/stop/equip_change/mainhand

playsound item.armor.equip_leather master @a ~ ~ ~ 1 1

advancement grant @a[tag=mt.player_check,limit=1] only mobtamer:mobtamer/first_equipment