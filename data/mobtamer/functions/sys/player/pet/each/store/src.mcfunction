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
data modify storage mobtamer:temp data.Item.tag.EntityTag.LeftHanded set from entity @s LeftHanded
data modify storage mobtamer:temp data.Item.tag.EntityTag.IsBaby set value 0b
data modify storage mobtamer:temp data.Item.tag.EntityTag.IsBaby set from entity @s IsBaby
data modify storage mobtamer:temp data.Item.tag.EntityTag.RabbitType set from entity @s RabbitType
data modify storage mobtamer:temp data.Item.tag.EntityTag.CanPickUpLoot set value 0b
data modify storage mobtamer:temp data.Item.tag.EntityTag.ArmorDropChances set from entity @s ArmorDropChances
data modify storage mobtamer:temp data.Item.tag.EntityTag.HandDropChances set from entity @s HandDropChances
data modify storage mobtamer:temp data.Item.tag.EntityTag.IsImmuneToZombification set from entity @s IsImmuneToZombification
data modify storage mobtamer:temp data.Item.tag.EntityTag.Attributes set from entity @s Attributes
data remove storage mobtamer:temp data.Item.tag.EntityTag.Attributes[{Name:"minecraft:generic.follow_range"}]
data remove storage mobtamer:temp data.Item.tag.EntityTag.Attributes[].Modifiers[{"Name":"Leader zombie bonus"}]
data remove storage mobtamer:temp data.Item.tag.EntityTag.Attributes[].Modifiers[{"Name":"Random spawn bonus"}]
data modify storage mobtamer:temp data.Item.tag.EntityTag.ActiveEffects set from entity @s ActiveEffects
data modify storage mobtamer:temp data.Item.tag.EntityTag.SaddleItem set from entity @s SaddleItem
data modify storage mobtamer:temp data.Item.tag.EntityTag.Variant set from entity @s Variant
data modify storage mobtamer:temp data.Item.tag.EntityTag.variant set from entity @s variant
data modify storage mobtamer:temp data.Item.tag.EntityTag.CollarColor set from entity @s CollarColor
data modify storage mobtamer:temp data.Item.tag.EntityTag.powered set from entity @s powered
data modify storage mobtamer:temp data.Item.tag.EntityTag.Strength set from entity @s Strength
data modify storage mobtamer:temp data.Item.tag.EntityTag.Tame set from entity @s Tame
data modify storage mobtamer:temp data.Item.tag.EntityTag.Size set from entity @s Size
data modify storage mobtamer:temp data.Item.tag.EntityTag.Age set from entity @s Age
data modify storage mobtamer:temp data.Item.tag.EntityTag.Type set from entity @s Type
execute if data storage mobtamer:settings data{baby_grow:0b} unless data storage mobtamer:temp data.Item.tag.EntityTag{Age:0} run data modify storage mobtamer:temp data.Item.tag.EntityTag.Age set value -1000000
data modify storage mobtamer:temp data.Item.tag.EntityTag.Items set from entity @s Items
data modify storage mobtamer:temp data.Item.tag.EntityTag.DecorItem set from entity @s DecorItem
data modify storage mobtamer:temp data.Item.tag.EntityTag.ChestedHorse set from entity @s ChestedHorse
data modify storage mobtamer:temp data.Item.tag.EntityTag.MainGene set from entity @s MainGene
data modify storage mobtamer:temp data.Item.tag.EntityTag.HiddenGene set from entity @s HiddenGene
data modify storage mobtamer:temp data.Item.tag.EntityTag.carriedBlockState set from entity @s carriedBlockState
data modify storage mobtamer:temp data.Item.tag.EntityTag.Owner set from entity @s Owner
data modify storage mobtamer:temp data.Item.tag.EntityTag.PersistenceRequired set value 1b
data modify storage mobtamer:temp data.Item.tag.EntityTag.Passengers set value []
data modify storage mobtamer:temp data.Item.tag.EntityTag.VillagerData set from entity @s VillagerData
data modify storage mobtamer:temp data.Item.tag.EntityTag.Gossips set from entity @s Gossips
data modify storage mobtamer:temp data.Item.tag.EntityTag.LastGossipDecay set from entity @s LastGossipDecay
data modify storage mobtamer:temp data.Item.tag.EntityTag.LastRestock set from entity @s LastRestock
data modify storage mobtamer:temp data.Item.tag.EntityTag.RestocksToday set from entity @s RestocksToday
data modify storage mobtamer:temp data.Item.tag.EntityTag.Inventory set from entity @s Inventory
data modify storage mobtamer:temp data.Item.tag.EntityTag.Offers set from entity @s Offers
data modify storage mobtamer:temp data.Item.tag.EntityTag.Xp set from entity @s Xp

data modify storage mobtamer:temp data.Item.tag.display.Name set from entity @s CustomName

# xp
execute store result storage mobtamer:temp data.Item.tag.EntityTag.PortalCooldown int 1 run scoreboard players add @s mt.xp 0

# health
execute store result storage mobtamer:temp data.Item.tag.EntityTag.Health float 0.01 run scoreboard players get @s mt.health
execute if entity @s[tag=mt.down] run data modify storage mobtamer:temp data.Item.tag.EntityTag.Health set value 1.0f

data modify storage mobtamer:temp data.Item.tag.EntityTag.Tags set from entity @s Tags
data modify storage mobtamer:temp data.Item.tag.EntityTag.Tags append value "mt.was_stored"
execute if entity @s[type=illusioner] run data modify storage mobtamer:temp data.Item.tag.EntityTag.Tags append value "mt.is_illusioner"

function mobtamer:sys/common/pet/status/all

# Lore
function mobtamer:sys/common/pet/egg_lore

data modify storage mobtamer:temp data.Item.tag.mt_pet_status set from storage mobtamer:temp data.pet_status
