execute if data storage mobtamer:temp data.pet.state{stop:1b} run data modify entity @s text set value '["",{"text":"⚓","color": "white"}]'
execute if data storage mobtamer:temp data.pet.state{stop:1b} run return 1
execute if data storage mobtamer:temp data.pet.state{targeting:1b} run data modify entity @s text set value '["",{"text":"⚔","color": "red"}]'
execute if data storage mobtamer:temp data.pet.state{targeting:1b} run return 1
function mobtamer:sys/display/kill