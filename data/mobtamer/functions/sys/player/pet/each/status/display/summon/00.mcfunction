data modify entity @s Owner set from storage mobtamer:temp data.pet.UUID
tag @s add mt.pet_display
execute on passengers run tag @s add mt.pet_display

tag @s remove mt.new

execute on origin if entity @s[type=!wither,type=!enderman,type=!elder_guardian,type=!iron_golem,type=!sniffer,type=!guardian,type=!ender_dragon,type=!ghast] run scoreboard players set $mt.display_summon.return mt.score 1

execute unless score $mt.display_summon.return mt.score matches 1 on passengers run data modify entity @s transformation.translation set value [0.0f,0.2f,0.0f]
execute unless score $mt.display_summon.return mt.score matches 1 on origin unless entity @s[type=!enderman,type=!iron_golem,type=!guardian] run scoreboard players set $mt.display_summon.return mt.score 1

execute unless score $mt.display_summon.return mt.score matches 1 on passengers run data modify entity @s transformation.translation set value [0.0f,0.3f,0.0f]
execute unless score $mt.display_summon.return mt.score matches 1 on origin unless entity @s[type=!wither] run scoreboard players set $mt.display_summon.return mt.score 1

execute unless score $mt.display_summon.return mt.score matches 1 on passengers run data modify entity @s transformation.translation set value [0.0f,0.8f,0.0f]
execute unless score $mt.display_summon.return mt.score matches 1 on origin unless entity @s[type=!elder_guardian,type=!sniffer,type=!ender_dragon] run scoreboard players set $mt.display_summon.return mt.score 1

execute unless score $mt.display_summon.return mt.score matches 1 on passengers run data modify entity @s transformation.translation set value [0.0f,1.2f,0.0f]

scoreboard players reset $mt.display_summon.return mt.score