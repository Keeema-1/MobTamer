execute if data storage mobtamer:temp data.pet.state{stop:1b} run data modify entity @s text set value '["",{"text":"⚓","color": "white"}]'
execute unless data storage mobtamer:temp data.pet.state{stop:1b} if data storage mobtamer:temp data.pet.state{targeting:1b} run data modify entity @s text set value '["",{"text":"⚔","color": "red"}]'
execute unless data storage mobtamer:temp data.pet.state{stop:1b} unless data storage mobtamer:temp data.pet.state{targeting:1b} run function mobtamer:sys/display/kill
