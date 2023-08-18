
execute as @e[team=!,tag=mt.selected,tag=mt.pet,limit=1] run function mobtamer:sys/common/pet/status/all

# data modify entity @s text set value '["",{"selector":"@e[team=!,tag=mt.selected,tag=mt.pet,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=!,tag=mt.selected,tag=mt.pet,limit=1]"},"color":"aqua"},{"text":"）"}]'
# data modify entity @s text set value '["",{"selector":"@e[team=!,tag=mt.selected,tag=mt.pet,limit=1]"},{"text":"\\n　所持Exp ","color":"yellow"},{"storage":"mobtamer:temp","nbt":"data.pet_status.xp","color":"aqua"},{"text":"\\n　❤","color":"red"},{"storage":"mobtamer:temp","nbt":"data.pet_status.health","color":"green"},{"text":"/"},{"storage":"mobtamer:temp","nbt":"data.pet_status.max_health.final","color":"aqua"},{"text":"\\n　攻撃力 ","color":"dark_green"},{"storage":"mobtamer:temp","nbt":"data.pet_status.attack.final","color":"dark_green"},{"text":"\\n　防御力 ","color":"dark_green"},{"storage":"mobtamer:temp","nbt":"data.pet_status.armor","color":"dark_green"},{"text":"\\n （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=!,tag=mt.selected,tag=mt.pet,limit=1]"},"color":"aqua"},{"text":"）"}]'
data modify entity @s text set value '["",{"selector":"@e[team=!,tag=mt.selected,tag=mt.pet,limit=1]"},{"text":"\\n　❤","color":"red"},{"storage":"mobtamer:temp","nbt":"data.pet_status.health","color":"green"},{"text":"/"},{"storage":"mobtamer:temp","nbt":"data.pet_status.max_health.final","color":"aqua"},{"text":"\\n　攻撃力 ","color":"dark_green"},{"storage":"mobtamer:temp","nbt":"data.pet_status.attack.final","color":"dark_green"},{"text":"\\n　防御力 ","color":"dark_green"},{"storage":"mobtamer:temp","nbt":"data.pet_status.armor.final","color":"dark_green"},{"text":"\\n　コスト ","color":"yellow"},{"score":{"objective":"mt.cost","name":"@e[team=!,tag=mt.selected,tag=mt.pet,limit=1]"},"color":"yellow"},{"text":"\\n　所持Exp ","color":"green"},{"storage":"mobtamer:temp","nbt":"data.pet_status.xp","color":"green"}]'

data remove storage mobtamer:temp data.pet_status
