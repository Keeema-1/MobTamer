
scoreboard players set $mt.pet.power_up_max.speed mt.score 0
execute if data storage mobtamer:temp data.pet_status.can_power_up{speed:1b} store result score $mt.pet.power_up_max.speed mt.score run data get storage mobtamer:settings data.values.power_up_max.speed
# execute store result score $mt.pet.power_up_max.speed mt.score run data get storage mobtamer:temp data.pet_status.can_power_up.speed
execute store result score $mt.pet.speed.base.before mt.score run data get storage mobtamer:temp data.pet_status.speed.base

execute if score $mt.pet.speed.base.before mt.score < $mt.pet.power_up_max.speed mt.score run function mobtamer:sys/common/pet_egg/update/text_display/speed/00
execute unless score $mt.pet.speed.base.before mt.score < $mt.pet.power_up_max.speed mt.score run function mobtamer:sys/common/pet_egg/update/text_display/speed/01

scoreboard players reset $mt.pet.speed.before mt.score
scoreboard players reset $mt.pet.power_up_max.speed mt.score
