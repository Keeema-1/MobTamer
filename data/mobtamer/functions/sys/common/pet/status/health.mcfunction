scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.pet.health mt.score = @s mt.health
scoreboard players operation $mt.pet.max_health mt.score = @s mt.max_health
scoreboard players operation $mt.pet.health mt.score /= $mt.const mt.score
scoreboard players operation $mt.pet.max_health mt.score /= $mt.const mt.score
execute if score $mt.pet.health mt.score matches ..-1 run scoreboard players set $mt.pet.health mt.score 0

execute store result storage mobtamer:temp data.pet_status.max_health int 1 run scoreboard players get $mt.pet.max_health mt.score
execute store result storage mobtamer:temp data.pet_status.health int 1 run scoreboard players get $mt.pet.health mt.score

data modify storage mobtamer:temp data.pet_status.can_power_up.max_health set value 1b

scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.pet.max_health mt.score
scoreboard players reset $mt.pet.health mt.score
