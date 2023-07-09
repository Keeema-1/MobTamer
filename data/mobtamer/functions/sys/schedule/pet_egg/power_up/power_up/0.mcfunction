
data modify storage mobtamer:temp data.pet_status set from entity @s Item.tag.mt_pet_status

execute if score $mt.interaction.action mt.score matches 1 run function mobtamer:sys/schedule/pet_egg/power_up/power_up/hp/0
execute if score $mt.interaction.action mt.score matches 2 run function mobtamer:sys/schedule/pet_egg/power_up/power_up/attack/0

function mobtamer:sys/common/pet_egg/update/0

data remove storage mobtamer:temp data.pet_status

particle minecraft:instant_effect ~ ~0.5 ~ 0.5 0.5 0.5 1 10

playsound entity.player.levelup master @a ~ ~ ~ 1 1

advancement grant @a[tag=mt.player_check,limit=1] only mobtamer:mobtamer/first_power_up
