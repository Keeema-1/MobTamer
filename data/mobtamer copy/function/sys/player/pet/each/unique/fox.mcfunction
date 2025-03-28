
execute store result score $mt.sleeptimer mt.score run data get entity @a[tag=mt.player_check,limit=1] SleepTimer

execute if score $mt.sleeptimer mt.score matches 0 if entity @s[tag=mt.following] if data entity @s {Sleeping:1b} run data modify entity @s Sleeping set value 0b
execute if score $mt.sleeptimer mt.score matches 0 if entity @s[tag=mt.following] if data entity @s {Sitting:1b} run data modify entity @s Sitting set value 0b

execute if score $mt.sleeptimer mt.score matches 1.. run function mobtamer:sys/player/pet/each/unique/fox_bed

scoreboard players reset $mt.sleeptimer mt.score

execute on passengers if entity @s[tag=mt.target_record_entity] on vehicle if data entity @s {Sleeping:1b} run data modify entity @s Sleeping set value 0b
execute on passengers if entity @s[tag=mt.target_record_entity] on vehicle if data entity @s {Sitting:1b} run data modify entity @s Sitting set value 0b
