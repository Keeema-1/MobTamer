tag @s add mt.target
execute as @e[team=mt.common,type=#mobtamer:can_revenge,tag=mt.player_check,tag=mt.pet,tag=!mt.stop,tag=!mt.down] unless predicate mobtamer:targeting_not_common_team run function mobtamer:sys/common/pet/be_hostile
tag @s remove mt.target