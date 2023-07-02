execute store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.attack.no_effect

execute if data storage mobtamer:temp data.pet_status.cost.attack.force store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.attack.force

execute store result score $mt.cost.tmp mt.score run data get storage mobtamer:temp data.pet_status.cost.attack.add
scoreboard players operation $mt.cost mt.score += $mt.cost.tmp mt.score

execute store result score $mt.cost.tmp mt.score run data get storage mobtamer:temp data.pet_status.max_health.final
scoreboard players operation $mt.cost mt.score *= $mt.cost.tmp mt.score

execute store result score $mt.cost.tmp mt.score run data get storage mobtamer:temp data.pet_status.armor
scoreboard players add $mt.cost.tmp mt.score 20
scoreboard players operation $mt.cost mt.score *= $mt.cost.tmp mt.score

scoreboard players set $mt.cost.tmp mt.score 100
scoreboard players operation $mt.cost mt.score /= $mt.cost.tmp mt.score

execute unless score $mt.cost mt.score matches 1.. run scoreboard players set $mt.cost mt.score 1

execute if data storage mobtamer:temp data.pet_status.cost.force store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.force

execute store result storage mobtamer:temp data.pet_status.cost.value int 1 run scoreboard players get $mt.cost mt.score

scoreboard players reset $mt.cost.tmp mt.score
scoreboard players reset $mt.cost mt.score
