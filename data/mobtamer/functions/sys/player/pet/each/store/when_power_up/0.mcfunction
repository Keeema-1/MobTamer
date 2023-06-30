
tag @s add mt.egg.power_up
data merge entity @s {PickupDelay:32767,Age:-32768,Glowing:1b,NoGravity:1b}

tag @s add mt.new

# data modify storage mobtamer:temp data.pet_status_before set from entity @s Item.tag.mt_pet_status
# data modify storage mobtamer:temp data.pet_status set from storage mobtamer:temp data.pet_status_before

execute summon text_display run function mobtamer:sys/player/pet/each/store/when_power_up/text_display/name
execute summon text_display run function mobtamer:sys/player/pet/each/store/when_power_up/text_display/explain
execute summon text_display run function mobtamer:sys/player/pet/each/store/when_power_up/text_display/attack
execute summon text_display run function mobtamer:sys/player/pet/each/store/when_power_up/text_display/hp

execute summon interaction run function mobtamer:sys/player/pet/each/store/when_power_up/interaction/hp
execute summon interaction run function mobtamer:sys/player/pet/each/store/when_power_up/interaction/attack

tag @s remove mt.new

data modify entity @s Owner set from entity @a[tag=mt.player_check,limit=1] UUID
data modify entity @s Thrower set from entity @a[tag=mt.player_check,limit=1] UUID

execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~

function mobtamer:sys/common/pet_egg/update/0

schedule function mobtamer:sys/schedule/pet_egg/0 1t replace
