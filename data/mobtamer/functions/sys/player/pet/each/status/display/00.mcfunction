
execute if score @s mt.health < @s mt.max_health anchored eyes rotated ~ 0 run function mobtamer:sys/player/pet/each/status/display/summon/0
execute if entity @s[tag=mt.display_exist] run return 1
execute if entity @s[tag=mt.stop] anchored eyes rotated ~ 0 run function mobtamer:sys/player/pet/each/status/display/summon/0
execute if entity @s[tag=mt.display_exist] run return 1
execute if predicate mobtamer:targeting anchored eyes rotated ~ 0 run function mobtamer:sys/player/pet/each/status/display/summon/0
execute unless predicate mobtamer:targeting on passengers if entity @s[tag=mt.target_record_entity] on vehicle if entity @s[tag=mt.pet_check] anchored eyes rotated ~ 0 run function mobtamer:sys/player/pet/each/status/display/summon/0
