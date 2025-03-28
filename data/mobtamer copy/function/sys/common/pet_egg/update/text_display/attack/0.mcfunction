
scoreboard players set $mt.pet.power_up_max.attack mt.score 0
execute if data storage mobtamer:temp data.pet_status.can_power_up{attack:1b} store result score $mt.pet.power_up_max.attack mt.score run data get storage mobtamer:settings data.values.power_up_max.attack
# execute store result score $mt.pet.power_up_max.attack mt.score run data get storage mobtamer:temp data.pet_status.power_up_max.attack
execute store result score $mt.pet.attack.base.before mt.score run data get storage mobtamer:temp data.pet_status.attack.base

execute if score $mt.pet.attack.base.before mt.score < $mt.pet.power_up_max.attack mt.score run function mobtamer:sys/common/pet_egg/update/text_display/attack/00
execute unless score $mt.pet.attack.base.before mt.score < $mt.pet.power_up_max.attack mt.score run function mobtamer:sys/common/pet_egg/update/text_display/attack/01

scoreboard players reset $mt.pet.attack.base.before mt.score
scoreboard players reset $mt.pet.power_up_max.attack mt.score
