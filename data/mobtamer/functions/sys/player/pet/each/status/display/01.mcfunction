
execute unless predicate mobtamer:passenger_is_text_display if predicate mobtamer:targeting_not_common_team if entity @s[type=!#mobtamer:hitbox/human_tall] summon text_display run function mobtamer:sys/player/pet/each/status/display/summon
execute unless predicate mobtamer:passenger_is_text_display if predicate mobtamer:targeting_not_common_team if entity @s[type=#mobtamer:hitbox/human_tall] summon text_display run function mobtamer:sys/player/pet/each/status/display/summon_tall
execute unless predicate mobtamer:passenger_is_text_display if entity @s[tag=mt.stop] if entity @s[type=!#mobtamer:hitbox/human_tall] summon text_display run function mobtamer:sys/player/pet/each/status/display/summon
execute unless predicate mobtamer:passenger_is_text_display if entity @s[tag=mt.stop] if entity @s[type=#mobtamer:hitbox/human_tall] summon text_display run function mobtamer:sys/player/pet/each/status/display/summon_tall

execute if predicate mobtamer:targeting_not_common_team on passengers if entity @s[type=text_display] run data modify entity @s text set value '["",{"text":"⚔","color": "red"}]'
execute if entity @s[tag=mt.stop] on passengers if entity @s[type=text_display] run data modify entity @s text set value '["",{"text":"⚓","color": "white"}]'

execute if predicate mobtamer:passenger_is_text_display unless predicate mobtamer:targeting_not_common_team if entity @s[tag=!mt.stop] on passengers if entity @s[type=text_display] run kill @s
