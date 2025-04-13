
data modify storage mobtamer:temp data.summoned_pet set from entity @s data.mobtamer
$execute summon $(entity_id) run function mobtamer:sys/func/pet/summon/main/000
data remove storage mobtamer:temp data.summoned_pet

kill @s