
# cost計算
function mobtamer:sys/common/pet/calc_cost

data modify storage mobtamer:temp data.pet_status_before set from storage mobtamer:temp data.pet_status

execute at @s on passengers if entity @s[tag=mt.text_display.power_up.explain] run function mobtamer:sys/common/pet_egg/update/text_display/explain

data modify storage mobtamer:temp data.pet_status set from storage mobtamer:temp data.pet_status_before
execute at @s on passengers if entity @s[tag=mt.text_display.power_up.hp] run function mobtamer:sys/common/pet_egg/update/text_display/hp/0

data modify storage mobtamer:temp data.pet_status set from storage mobtamer:temp data.pet_status_before
execute at @s on passengers if entity @s[tag=mt.text_display.power_up.attack] run function mobtamer:sys/common/pet_egg/update/text_display/attack/0

data modify storage mobtamer:temp data.pet_status set from storage mobtamer:temp data.pet_status_before
execute at @s on passengers if entity @s[tag=mt.text_display.power_up.armor] run function mobtamer:sys/common/pet_egg/update/text_display/armor/0

data modify storage mobtamer:temp data.pet_status set from storage mobtamer:temp data.pet_status_before
execute at @s on passengers if entity @s[tag=mt.text_display.power_up.speed] run function mobtamer:sys/common/pet_egg/update/text_display/speed/0

data modify storage mobtamer:temp data.pet_status set from storage mobtamer:temp data.pet_status_before

function mobtamer:sys/common/pet_egg/update/lore/0

data modify entity @s Item.components."minecraft:custom_data".mt_pet_status set from storage mobtamer:temp data.pet_status_before
data modify entity @s Item.components."minecraft:entity_data".PortalCooldown set from storage mobtamer:temp data.pet_status_before.xp

data remove storage mobtamer:temp data.pet_status_before
data remove storage mobtamer:temp data.pet_status

