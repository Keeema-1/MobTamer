tag @s remove mt.following
tag @s remove mt.stop
tag @s remove mt.player_check
tag @s remove mt.pet_check

function mobtamer:sys/player/pet/each/store/each_type

data modify storage mobtamer:temp data.Item.Count set value 1b

data modify storage mobtamer:temp data.Item.tag.EntityTag.CustomName set from entity @s CustomName
data modify storage mobtamer:temp data.Item.tag.EntityTag.CustomNameVisible set from entity @s CustomNameVisible
data modify storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems set from entity @s ArmorItems
data modify storage mobtamer:temp data.Item.tag.EntityTag.IsBaby set from entity @s IsBaby
data modify storage mobtamer:temp data.Item.tag.EntityTag.Attributes set from entity @s Attributes
data modify storage mobtamer:temp data.Item.tag.EntityTag.PersistenceRequired set value 1b
#data modify storage mobtamer:temp data.Item.tag.EntityTag.Health set from entity @s Health
execute store result storage mobtamer:temp data.Item.tag.EntityTag.Health float 1 run scoreboard players get @s mt.health
execute if entity @s[tag=mt.down] run data modify storage mobtamer:temp data.Item.tag.EntityTag.Health set value 1.0f
data modify storage mobtamer:temp data.Item.tag.display.Name set from entity @s CustomName
#execute unless data entity @s CustomName run data modify storage mobtamer:temp data.Item.tag.display.Name set string storage mobtamer:temp data.Item.tag.display.Name -1 -1

data modify storage mobtamer:temp data.Item.tag.EntityTag.Tags set from entity @s Tags
data modify storage mobtamer:temp data.Item.tag.EntityTag.Tags append value "mt.was_stored"

#data modify storage mobtamer:temp data.Item.tag.EntityTag.PortalCooldown set from 
#execute store result storage mobtamer:temp data.Item.tag.EntityTag.PortalCooldown int 1 run scoreboard players get @s mt.id

# mt.player_checkなどもついたまま