
execute if entity @s[tag=mt.interaction.power_up.hp] run scoreboard players set $mt.interaction.action mt.score 1
execute if entity @s[tag=mt.interaction.power_up.attack] run scoreboard players set $mt.interaction.action mt.score 2
execute if entity @s[tag=mt.interaction.power_up.armor] run scoreboard players set $mt.interaction.action mt.score 3

data remove entity @s interaction
