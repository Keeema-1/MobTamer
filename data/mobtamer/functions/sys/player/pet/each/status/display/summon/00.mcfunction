data modify entity @s Owner set from storage mobtamer:temp data.pet.UUID
tag @s add mt.pet_display
execute on passengers run tag @s add mt.pet_display

tag @s remove mt.new

execute on origin if entity @s[type=!wither,type=!enderman,type=!elder_guardian,type=!iron_golem,type=!sniffer] run return 1
execute on passengers run data modify entity @s transformation.translation set value [0.0f,0.2f,0.0f]
execute on origin unless entity @s[type=!enderman,type=!iron_golem] run return 1

execute on passengers run data modify entity @s transformation.translation set value [0.0f,0.3f,0.0f]
execute on origin unless entity @s[type=!wither] run return 1

execute on passengers run data modify entity @s transformation.translation set value [0.0f,0.8f,0.0f]
