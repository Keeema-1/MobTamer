
data modify storage mobtamer:database data.item.pet_release set value {mt_pet_release:1b,Enchantments:[{id:"infinity"}],HideFlags:1}

data modify storage mobtamer:database data.item.pet_release.display.Name set from storage mobtamer:text data.item.pet_release.Name
data modify storage mobtamer:database data.item.pet_release.display.Lore append from storage mobtamer:text data.item.pet_release.Lore[]
