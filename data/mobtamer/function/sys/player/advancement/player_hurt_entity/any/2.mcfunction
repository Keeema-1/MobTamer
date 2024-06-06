tag @s add mt.target
execute as @e[team=!,type=#mobtamer:can_revenge,tag=mt.player_check,tag=mt.pet,tag=!mt.stop,tag=!mt.down] unless predicate mobtamer:targeting at @s run function mobtamer:sys/common/pet/be_hostile
execute as @e[team=!,type=rabbit,tag=mt.player_check,tag=mt.pet,tag=!mt.stop,tag=!mt.down] if data entity @s {RabbitType:99} unless predicate mobtamer:targeting at @s run function mobtamer:sys/common/pet/be_hostile
execute as @e[team=!,type=#mobtamer:guardians,tag=mt.player_check,tag=mt.pet,tag=!mt.stop,tag=!mt.down] unless predicate mobtamer:targeting unless score @s mt.hostile_interval matches 1.. at @s run function mobtamer:sys/player/advancement/player_hurt_entity/any/command
execute as @e[team=!,type=ghast,tag=mt.player_check,tag=mt.pet,tag=!mt.stop,tag=!mt.down] unless predicate mobtamer:targeting unless score @s mt.hostile_interval matches 1.. at @s run function mobtamer:sys/player/advancement/player_hurt_entity/any/command
execute as @e[team=!,type=phantom,tag=mt.player_check,tag=mt.pet,tag=!mt.stop,tag=!mt.down] unless predicate mobtamer:targeting unless score @s mt.hostile_interval matches 1.. at @s run function mobtamer:sys/player/advancement/player_hurt_entity/any/command
execute as @e[team=!,tag=mt.player_check,tag=mt.custom_attack,tag=mt.pet,tag=!mt.stop,tag=!mt.down] unless predicate mobtamer:targeting unless score @s mt.hostile_interval matches 1.. at @s run function mobtamer:sys/player/advancement/player_hurt_entity/any/command
tag @s remove mt.target
