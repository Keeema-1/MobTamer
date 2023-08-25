# data modify storage mobtamer:database data.item.conductor set value {display:{Name:'{"text":"コンダクター","italic": false}'},mt_conductor:1b}
data modify storage mobtamer:database data.item.conductor set value {mt_conductor:1b}
data modify storage mobtamer:database data.item.conductor.display.Name set from storage mobtamer:text data.item.conductor.Name
