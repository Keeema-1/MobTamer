execute unless entity @e[team=!,type=#mobtamer:can_revenge,tag=mt.selected,tag=mt.player_check,tag=mt.pet] as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.stop,tag=!mt.down] at @s run function mobtamer:sys/common/pet/be_hostile
execute as @e[team=!,type=#mobtamer:can_revenge,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] at @s run function mobtamer:sys/common/pet/be_hostile
