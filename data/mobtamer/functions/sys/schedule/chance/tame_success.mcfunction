scoreboard players set @s mt.score 40
tag @s add mt.success
team join mt.common @s
data merge entity @s {Invulnerable:1b,NoAI:1b,NoGravity:1b,Glowing:1b}

scoreboard players operation $mt.pet.id mt.score = @s mt.id
execute as @a if score @s mt.id = $mt.pet.id mt.score run tag @s add mt.tame_success_player
scoreboard players reset $mt.pet.id mt.score

tellraw @a[tag=mt.tame_success_player] [{"selector":"@s"},{"storage": "mobtamer:text","nbt":"data.pet.tame","interpret": true}]
execute if data storage mobtamer:settings data{advancement_player:"all"} if entity @a[tag=mt.tame_success_player,limit=1] run tellraw @a[tag=!mt.tame_success_player] [{"selector":"@a[tag=mt.tame_success_player,limit=1]"},{"text":" が ","color": "yellow"},{"selector":"@s"},{"storage": "mobtamer:text","nbt":"data.pet.tame","interpret": true}]
execute if data storage mobtamer:settings data{advancement_player:"all"} unless entity @a[tag=mt.tame_success_player,limit=1] run tellraw @a[tag=!mt.tame_success_player] [{"selector":"@s"},{"storage": "mobtamer:text","nbt":"data.pet.tame","interpret": true}]

tag @a remove mt.tame_success_player

particle minecraft:totem_of_undying ~ ~2 ~ 0.2 0.2 0.2 0.5 30
playsound entity.player.levelup master @a ~ ~ ~ 1 1

execute as @a run function mobtamer:sys/player/status_update

execute if data storage mobtamer:temp hold{weakness_challenge:1b} run advancement grant @a only mobtamer:mobtamer/challenge/weakness/any
execute if data storage mobtamer:temp hold{weakness_challenge:1b} if entity @s[type=zombie] run advancement grant @a only mobtamer:mobtamer/challenge/weakness/zombie
execute if data storage mobtamer:temp hold{weakness_challenge:1b} if entity @s[type=wither_skeleton] run advancement grant @a only mobtamer:mobtamer/challenge/weakness/wither_skeleton
execute if data storage mobtamer:temp hold{weakness_challenge:1b} if entity @s[type=iron_golem] run advancement grant @a only mobtamer:mobtamer/challenge/weakness/iron_golem
execute if data storage mobtamer:temp hold{weakness_challenge:1b} if entity @s[type=warden] run advancement grant @a only mobtamer:mobtamer/challenge/weakness/warden
execute if data storage mobtamer:temp hold{only_pufferfish:2b} run advancement grant @a only mobtamer:mobtamer/challenge/weakness/only_pufferfish
data remove storage mobtamer:temp hold.weakness_challenge
data remove storage mobtamer:temp hold.only_pufferfish
