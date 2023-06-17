data modify entity @s Owner set from storage mobtamer:temp data.pet.UUID
tag @s add mt.pet_display
execute on passengers run tag @s add mt.pet_display
# execute on passengers run data modify entity @s transformation.translation set value [0.0f,0.0f,0.0f]
tag @s remove mt.new
