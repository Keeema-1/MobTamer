tag @s remove mt.following
tag @s remove mt.stop
tag @s remove mt.player_check
tag @s remove mt.pet_check
tag @s remove mt.selected

function mobtamer:sys/player/pet/each/store/each_type

data modify storage mobtamer:temp data.Item.Count set value 1

data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".CustomName set from entity @s CustomName
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".CustomNameVisible set from entity @s CustomNameVisible
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorItems set from entity @s ArmorItems
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".HandItems set from entity @s HandItems
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".LeftHanded set from entity @s LeftHanded
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".IsBaby set value 0b
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".IsBaby set from entity @s IsBaby
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".RabbitType set from entity @s RabbitType
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".CanPickUpLoot set value 0b
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".ArmorDropChances set from entity @s ArmorDropChances
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".HandDropChances set from entity @s HandDropChances
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".IsImmuneToZombification set from entity @s IsImmuneToZombification
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".attributes set from entity @s attributes
data remove storage mobtamer:temp data.Item.components."minecraft:entity_data".attributes[{id:"minecraft:generic.follow_range"}]
data remove storage mobtamer:temp data.Item.components."minecraft:entity_data".attributes[].modifiers[{"id":"Leader zombie bonus"}]
data remove storage mobtamer:temp data.Item.components."minecraft:entity_data".attributes[].modifiers[{"id":"Random spawn bonus"}]
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".active_effects set from entity @s active_effects
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".SaddleItem set from entity @s SaddleItem
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Variant set from entity @s Variant
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".variant set from entity @s variant
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".CollarColor set from entity @s CollarColor
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".powered set from entity @s powered
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Strength set from entity @s Strength
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tame set from entity @s Tame
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Size set from entity @s Size
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Age set from entity @s Age
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Type set from entity @s Type
execute if data storage mobtamer:settings data{baby_grow:0b} unless data storage mobtamer:temp data.Item.components."minecraft:entity_data"{Age:0} run data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Age set value -1000000
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Items set from entity @s Items
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".DecorItem set from entity @s DecorItem
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".ChestedHorse set from entity @s ChestedHorse
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".MainGene set from entity @s MainGene
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".HiddenGene set from entity @s HiddenGene
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".carriedBlockState set from entity @s carriedBlockState
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Owner set from entity @s Owner
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".PersistenceRequired set value 1b
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Passengers set value []
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".VillagerData set from entity @s VillagerData
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Gossips set from entity @s Gossips
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".LastGossipDecay set from entity @s LastGossipDecay
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".LastRestock set from entity @s LastRestock
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".RestocksToday set from entity @s RestocksToday
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Inventory set from entity @s Inventory
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Offers set from entity @s Offers
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Xp set from entity @s Xp

data modify storage mobtamer:temp data.Item.components.display.Name set from entity @s CustomName

# xp
execute store result storage mobtamer:temp data.Item.components."minecraft:entity_data".PortalCooldown int 1 run scoreboard players add @s mt.xp 0

execute store result storage mobtamer:temp data.Item.components."minecraft:entity_data".TicksFrozen int 1 run scoreboard players get @s mt.attack_damage

# health
execute store result storage mobtamer:temp data.Item.components."minecraft:entity_data".Health float 0.01 run scoreboard players get @s mt.health
execute if entity @s[tag=mt.down] run data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Health set value 1.0f

data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tags set from entity @s Tags
data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tags append value "mt.was_stored"
execute if entity @s[type=illusioner] run data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tags append value "mt.is_illusioner"
execute if entity @s[type=giant] run data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tags append value "mt.is_giant"

execute if score @s mt.strategy = $mt.strategy.attack mt.score run data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tags append value "mt.strategy.attack"
execute if score @s mt.strategy = $mt.strategy.balance mt.score run data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tags append value "mt.strategy.balance"
execute if score @s mt.strategy = $mt.strategy.recover mt.score run data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tags append value "mt.strategy.recover"
execute if score @s mt.strategy = $mt.strategy.follow mt.score run data modify storage mobtamer:temp data.Item.components."minecraft:entity_data".Tags append value "mt.strategy.follow"

function mobtamer:sys/common/pet/status/all

# Lore
function mobtamer:sys/common/pet/egg_lore

data modify storage mobtamer:temp data.Item.components."minecraft:custom_data".mt_pet_status set from storage mobtamer:temp data.pet_status
