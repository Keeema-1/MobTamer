
execute on vehicle run return 1

execute on passengers if entity @s[tag=mt.target_record_entity] run function mobtamer:sys/player/pet/each/unique/guardian/beam/0

execute unless score $mt.exist_target_record_entity mt.score matches 1.. run function mobtamer:sys/player/pet/each/unique/guardian/beam/start/0

scoreboard players reset $mt.beam_hit_flag mt.score
scoreboard players reset $mt.exist_target_record_entity mt.score
