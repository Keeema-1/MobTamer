
scoreboard players set $mt.pet.power_up_max.max_health mt.score 0
execute if data storage mobtamer:temp data.pet_status.can_power_up{max_health:1b} store result score $mt.pet.power_up_max.max_health mt.score run data get storage mobtamer:settings data.values.power_up_max.max_health
# execute store result score $mt.pet.power_up_max.max_health mt.score run data get storage mobtamer:temp data.pet_status.can_power_up.max_health
execute store result score $mt.pet.max_health.base.before mt.score run data get storage mobtamer:temp data.pet_status.max_health.base

execute if score $mt.pet.max_health.base.before mt.score < $mt.pet.power_up_max.max_health mt.score run function mobtamer:sys/common/pet_egg/update/text_display/hp/00
execute unless score $mt.pet.max_health.base.before mt.score < $mt.pet.power_up_max.max_health mt.score run function mobtamer:sys/common/pet_egg/update/text_display/hp/01

scoreboard players reset $mt.pet.max_health.before mt.score
scoreboard players reset $mt.pet.power_up_max.max_health mt.score
