
data modify storage mobtamer:database data.item.custom_attack set value {custom_data:{mt_custom_attack:1b},enchantments:[{id:"infinity"}],HideFlags:1}

data modify storage mobtamer:database data.item.custom_attack.custom_name set from storage mobtamer:text data.item.custom_attack.Name
data modify storage mobtamer:database data.item.custom_attack.lore append from storage mobtamer:text data.item.custom_attack.Lore[]
