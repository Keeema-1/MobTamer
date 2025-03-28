
scoreboard players set $mt.pet.power_up_max.armor mt.score 0
execute if data storage mobtamer:temp data.pet_status.can_power_up{armor:1b} store result score $mt.pet.power_up_max.armor mt.score run data get storage mobtamer:settings data.values.power_up_max.armor
# execute store result score $mt.pet.power_up_max.armor mt.score run data get storage mobtamer:temp data.pet_status.power_up_max.armor
execute store result score $mt.pet.armor.base.before mt.score run data get storage mobtamer:temp data.pet_status.armor.base

execute if score $mt.pet.armor.base.before mt.score < $mt.pet.power_up_max.armor mt.score run function mobtamer:sys/common/pet_egg/update/text_display/armor/00
execute unless score $mt.pet.armor.base.before mt.score < $mt.pet.power_up_max.armor mt.score run function mobtamer:sys/common/pet_egg/update/text_display/armor/01

scoreboard players reset $mt.pet.armor.base.before mt.score
scoreboard players reset $mt.pet.power_up_max.armor mt.score
