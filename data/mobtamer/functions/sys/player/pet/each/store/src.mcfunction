tag @s remove mt.following
tag @s remove mt.stop
tag @s remove mt.player_check
tag @s remove mt.pet_check
tag @s remove mt.selected

function mobtamer:sys/player/pet/each/store/each_type

data modify storage mobtamer:temp data.Item.Count set value 1b

data modify storage mobtamer:temp data.Item.tag.EntityTag.CustomName set from entity @s CustomName
data modify storage mobtamer:temp data.Item.tag.EntityTag.CustomNameVisible set from entity @s CustomNameVisible
data modify storage mobtamer:temp data.Item.tag.EntityTag.ArmorItems set from entity @s ArmorItems
data modify storage mobtamer:temp data.Item.tag.EntityTag.HandItems set from entity @s HandItems
data modify storage mobtamer:temp data.Item.tag.EntityTag.IsBaby set from entity @s IsBaby
data modify storage mobtamer:temp data.Item.tag.EntityTag.ArmorDropChances set from entity @s ArmorDropChances
data modify storage mobtamer:temp data.Item.tag.EntityTag.HandDropChances set from entity @s HandDropChances
data modify storage mobtamer:temp data.Item.tag.EntityTag.IsImmuneToZombification set from entity @s IsImmuneToZombification
data modify storage mobtamer:temp data.Item.tag.EntityTag.Attributes set from entity @s Attributes
data modify storage mobtamer:temp data.Item.tag.EntityTag.SaddleItem set from entity @s SaddleItem
data modify storage mobtamer:temp data.Item.tag.EntityTag.Variant set from entity @s Variant
data modify storage mobtamer:temp data.Item.tag.EntityTag.Strength set from entity @s Strength
data modify storage mobtamer:temp data.Item.tag.EntityTag.Tame set from entity @s Tame
data modify storage mobtamer:temp data.Item.tag.EntityTag.Age set from entity @s Age
execute if data storage mobtamer:settings data{baby_grow:0b} unless data storage mobtamer:temp data.Item.tag.EntityTag{Age:0} run data modify storage mobtamer:temp data.Item.tag.EntityTag.Age set value -1000000
data modify storage mobtamer:temp data.Item.tag.EntityTag.Items set from entity @s Items
data modify storage mobtamer:temp data.Item.tag.EntityTag.DecorItem set from entity @s DecorItem
data modify storage mobtamer:temp data.Item.tag.EntityTag.ChestedHorse set from entity @s ChestedHorse
data modify storage mobtamer:temp data.Item.tag.EntityTag.MainGene set from entity @s MainGene
data modify storage mobtamer:temp data.Item.tag.EntityTag.HiddenGene set from entity @s HiddenGene
# data modify storage mobtamer:temp data.Item.tag.EntityTag.ActiveEffects set value [{Duration:3,Id:14,ShowParticles:0b,Amplifier:1}]
data modify storage mobtamer:temp data.Item.tag.EntityTag.PersistenceRequired set value 1b
data modify storage mobtamer:temp data.Item.tag.EntityTag.Passengers set value []
data modify storage mobtamer:temp data.Item.tag.display.Name set from entity @s CustomName
#execute unless data entity @s CustomName run data modify storage mobtamer:temp data.Item.tag.display.Name set string storage mobtamer:temp data.Item.tag.display.Name -1 -1

#data modify storage mobtamer:temp data.Item.tag.EntityTag.Health set from entity @s Health
execute store result storage mobtamer:temp data.Item.tag.EntityTag.Health float 0.01 run scoreboard players get @s mt.health
execute if entity @s[tag=mt.down] run data modify storage mobtamer:temp data.Item.tag.EntityTag.Health set value 1.0f

data modify storage mobtamer:temp data.Item.tag.EntityTag.Tags set from entity @s Tags
data modify storage mobtamer:temp data.Item.tag.EntityTag.Tags append value "mt.was_stored"

#data modify storage mobtamer:temp data.Item.tag.EntityTag.PortalCooldown set from 
#execute store result storage mobtamer:temp data.Item.tag.EntityTag.PortalCooldown int 1 run scoreboard players get @s mt.id

# mt.player_checkなどもついたまま