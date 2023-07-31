function mobtamer:sys/player/pet/each/status/health/0
function mobtamer:sys/player/pet/each/status/display/0

tag @s remove mt.targeting
execute if predicate mobtamer:targeting run tag @s add mt.targeting
execute on passengers if entity @s[tag=mt.target_record_entity] on vehicle if entity @s[tag=mt.pet_check] run tag @s add mt.targeting
