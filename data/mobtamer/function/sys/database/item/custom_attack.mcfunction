
data modify storage mobtamer:database data.item.custom_attack set value {mt_custom_attack:1b,Enchantments:[{id:"infinity"}],HideFlags:1}

data modify storage mobtamer:database data.item.custom_attack.display.Name set from storage mobtamer:text data.item.custom_attack.Name
data modify storage mobtamer:database data.item.custom_attack.display.Lore append from storage mobtamer:text data.item.custom_attack.Lore[]
