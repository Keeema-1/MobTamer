tag @s add mt.down
tag @s remove mt.following
tag @s remove mt.stop
effect give @s invisibility infinite 1 true
data merge entity @s {Glowing:1b,NoAI:1b,Invulnerable:1b,Silent:1b}
scoreboard players set @s mt.health -120
execute summon text_display run function mobtamer:sys/player/pet/each/down/down/display

playsound minecraft:item.totem.use master @a ~ ~ ~ 1

execute unless data storage mobtamer:settings data{kill_down_pet:"immediate"} run tellraw @a[tag=mt.player_check,limit=1] [{"selector":"@s"},{"storage": "mobtamer:text","nbt":"data.pet.down","interpret": true}]

execute if data storage mobtamer:settings data{kill_down_pet:"5min"} run scoreboard players set @s mt.timer1 6000
execute if data storage mobtamer:settings data{kill_down_pet:"20min"} run scoreboard players set @s mt.timer1 24000
execute if data storage mobtamer:settings data{kill_down_pet:"immediate"} run scoreboard players set @s mt.timer1 20
