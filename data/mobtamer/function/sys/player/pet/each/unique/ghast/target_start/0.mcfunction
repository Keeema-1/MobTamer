execute if predicate mobtamer:random/500m unless predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/ghast/target_start/00

execute on passengers if entity @s[tag=mt.target_record_entity] on vehicle if entity @s[tag=mt.pet_check] run scoreboard players set @s mt.hostile_interval 60