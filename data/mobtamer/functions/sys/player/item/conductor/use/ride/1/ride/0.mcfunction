
execute store result score $mt.controller mt.slot run data get storage mobtamer:temp data.item_tag.mt_state.slot
execute as @e[team=mt.common,tag=mt.player_check,tag=mt.pet] if score @s mt.slot = $mt.controller mt.slot run tag @s add mt.check

ride @e[team=mt.common,tag=mt.check,limit=1] mount @e[team=mt.common,tag=mt.selected,tag=mt.pet,limit=1]
execute if score $mt.controller mt.slot matches ..-1 run ride @s mount @e[team=mt.common,tag=mt.selected,tag=mt.pet,limit=1]

execute if score $mt.controller mt.slot matches ..-1 run advancement grant @s only mobtamer:mobtamer/first_ride

execute as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=!mt.down] run data remove entity @s Glowing 
tag @e[team=mt.common,tag=mt.selected] remove mt.selected
tag @e[team=mt.common,tag=mt.check] remove mt.check
scoreboard players reset $mt.controller mt.slot

function mobtamer:sys/player/item/conductor/use/ride/1/to0
