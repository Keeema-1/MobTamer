
execute at @s on origin if entity @s[distance=..12] run function mobtamer:sys/player/pet/each/unique/guardian/beam/00

execute unless score $mt.exist_target_record_entity mt.score matches 1.. run function mobtamer:sys/player/pet/each/unique/guardian/beam/end

execute if score $mt.exist_target_record_entity mt.score matches 1.. if entity @s[tag=mt.down] run function mobtamer:sys/player/pet/each/unique/guardian/beam/end
execute if score $mt.exist_target_record_entity mt.score matches 1.. if entity @s[tag=mt.stop] run function mobtamer:sys/player/pet/each/unique/guardian/beam/end
