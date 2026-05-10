
execute if entity @s[type=#mobtamer:can_revenge] run function mobtamer:sys/common/pet/be_hostile

execute if entity @s[team=!,type=#mobtamer:guardians] run function mobtamer:sys/player/advancement/player_hurt_entity/any/command
execute if entity @s[team=!,type=ghast] run function mobtamer:sys/player/advancement/player_hurt_entity/any/command
execute if entity @s[team=!,type=phantom] run function mobtamer:sys/player/advancement/player_hurt_entity/any/command
execute if entity @s[team=!,tag=mt.custom_attack] run function mobtamer:sys/player/advancement/player_hurt_entity/any/command
