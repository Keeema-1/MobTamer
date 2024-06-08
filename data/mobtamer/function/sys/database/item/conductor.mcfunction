# data modify storage mobtamer:database data.item.conductor set value {display:{Name:'{"text":"コンダクター","italic": false}'},mt_conductor:1b}
data modify storage mobtamer:database data.item.conductor.custom_data set value {mt_conductor:1b}
data modify storage mobtamer:database data.item.conductor.custom_name set from storage mobtamer:text data.item.conductor.Name
data modify storage mobtamer:database data.item.conductor.lore set value []
data modify storage mobtamer:database data.item.conductor.lore append from storage mobtamer:text data.item.conductor.Lore.info
data modify storage mobtamer:database data.item.conductor.lore append from storage mobtamer:text data.item.conductor.Lore.common[0]
data modify storage mobtamer:database data.item.conductor.lore append from storage mobtamer:text data.item.conductor.Lore.common[1]
data modify storage mobtamer:database data.item.conductor.lore append from storage mobtamer:text data.item.conductor.Lore.common[2]
