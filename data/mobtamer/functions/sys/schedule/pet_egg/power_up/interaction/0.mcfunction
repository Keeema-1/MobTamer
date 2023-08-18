
execute if entity @s[tag=mt.interaction.power_up.hp] rotated as @a[tag=mt.player_check] rotated ~ 0 positioned ^2 ^0.6 ^ run tp ~ ~ ~
execute if entity @s[tag=mt.interaction.power_up.attack] rotated as @a[tag=mt.player_check] rotated ~ 0 positioned ^2 ^2.0 ^ run tp ~ ~ ~
execute if entity @s[tag=mt.interaction.power_up.armor] rotated as @a[tag=mt.player_check] rotated ~ 0 positioned ^-2 ^0.6 ^ run tp ~ ~ ~

execute store result score $mt.interaction.uuid0 mt.score run data get entity @s interaction.player[0]
execute store result score $mt.player.uuid0 mt.score run data get entity @a[tag=mt.player_check,limit=1] UUID[0]

execute if score $mt.interaction.uuid0 mt.score = $mt.player.uuid0 mt.score run function mobtamer:sys/schedule/pet_egg/power_up/interaction/action

scoreboard players reset $mt.interaction.uuid0 mt.score
scoreboard players reset $mt.player.uuid0 mt.score
