tag @s add mt.me

execute if data storage mobtamer:settings data{team_color:"aqua"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"aqua"}]
execute if data storage mobtamer:settings data{team_color:"white"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"white"}]
execute if data storage mobtamer:settings data{team_color:"blue"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"blue"}]
execute if data storage mobtamer:settings data{team_color:"green"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"green"}]
execute if data storage mobtamer:settings data{team_color:"yellow"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"yellow"}]
execute if data storage mobtamer:settings data{team_color:"gold"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"gold"}]
execute if data storage mobtamer:settings data{team_color:"red"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"red"}]
execute if data storage mobtamer:settings data{team_color:"light_purple"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"light_purple"}]
execute if data storage mobtamer:settings data{team_color:"red"} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.common","interpret": true,"color":"red"}]

execute as @a[team=mt.common] run tellraw @a[tag=mt.me] [{"text":"  "},{"selector":"@s"}]
execute unless entity @a[team=mt.common] run tellraw @s [{"storage": "mobtamer:text","nbt":"data.common.nothing","interpret": true}]

tag @s remove mt.me
