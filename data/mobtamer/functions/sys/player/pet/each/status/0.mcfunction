function mobtamer:sys/player/pet/each/status/health/0
function mobtamer:sys/player/pet/each/status/display/0

tag @s remove mt.targeting
# execute if predicate mobtamer:targeting run tag @s add mt.targeting
execute on target run scoreboard players set $mt.targeting mt.score 1
execute if score $mt.targeting mt.score matches 1.. run tag @s add mt.targeting
execute on passengers if entity @s[tag=mt.target_record_entity] on vehicle if entity @s[tag=mt.pet_check] run tag @s add mt.targeting
scoreboard players reset $mt.targeting mt.score
