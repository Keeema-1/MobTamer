
data modify storage mobtamer:database data.item.pet_release set value {custom_data:{mt_pet_release:1b},enchantments:[{id:"infinity"}],HideFlags:1}

data modify storage mobtamer:database data.item.pet_release.custom_name set from storage mobtamer:text data.item.pet_release.Name
data modify storage mobtamer:database data.item.pet_release.lore append from storage mobtamer:text data.item.pet_release.Lore[]
