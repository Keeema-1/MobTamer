execute unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] as @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.stop,tag=!mt.down] run function mobtamer:sys/common/pet/be_hostile
execute as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] run function mobtamer:sys/common/pet/be_hostile
