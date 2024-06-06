
execute store result score $mt.controller mt.slot run data get storage mobtamer:temp data.item_tag.mt_state.slot
execute as @e[team=!,tag=mt.player_check,tag=mt.pet] if score @s mt.slot = $mt.controller mt.slot run tag @s add mt.check

ride @e[team=!,tag=mt.check,limit=1] mount @e[team=!,tag=mt.selected,tag=mt.pet,limit=1]
execute if score $mt.controller mt.slot matches ..-1 run ride @s mount @e[team=!,tag=mt.selected,tag=mt.pet,limit=1]

execute on vehicle if entity @s[tag=mt.pet] on passengers if entity @s[type=player,tag=mt.player_check] run advancement grant @s only mobtamer:mobtamer/first_ride

execute as @e[team=!,tag=mt.selected,tag=mt.player_check,tag=!mt.down] run data remove entity @s Glowing 
tag @e[team=!,tag=mt.selected] remove mt.selected
tag @e[team=!,tag=mt.check] remove mt.check
scoreboard players reset $mt.controller mt.slot

function mobtamer:sys/player/item/conductor/use/ride/1/to0
