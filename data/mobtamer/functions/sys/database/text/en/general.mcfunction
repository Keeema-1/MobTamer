
data modify storage mobtamer:text data.settings_initialized set value '{"text": "Settings have been initialized.","color": "green"}'
data modify storage mobtamer:text data.version_changed set value '{"text": "*The version of the data pack has been changed.","color": "green"}'

data modify storage mobtamer:text data.data_transfer.explain set value '[{"text": "Items can be transferred by placing them in this entity and copying the ","color": "yellow"},{"text": "command_storage_mobtamer_transfer.dat","color": "green"},{"text": " in the ","color": "yellow"},{"text": "data","color": "green"},{"text": " folder of the world folder to the same location in the migration destination.","color": "yellow"}]'
data modify storage mobtamer:text data.data_transfer.cannot set value '{"text":"No more than two entities for data transfer can be placed on a world.","color":"red"}'

data modify storage mobtamer:text data.team.join.blue set value '{"text":"You joined the blue team.","color":"blue"}'
data modify storage mobtamer:text data.team.join.gold set value '{"text":"You joined the orange team.","color":"gold"}'
data modify storage mobtamer:text data.team.join.red set value '{"text":"You joined the red team.","color":"red"}'
data modify storage mobtamer:text data.team.join.green set value '{"text":"You joined the green team.","color":"green"}'
data modify storage mobtamer:text data.team.join.common set value '{"text":"You joined the common team."}'

data modify storage mobtamer:text data.team.list.common set value '{"text":"＜List of Common Team Participants＞"}'
data modify storage mobtamer:text data.team.list.blue set value '{"text":"＜List of Blue Team Participants＞","color":"blue"}'
data modify storage mobtamer:text data.team.list.red set value '{"text":"＜List of Red Team Participants＞","color":"red"}'
data modify storage mobtamer:text data.team.list.gold set value '{"text":"＜List of Orange Team Participants＞","color":"gold"}'
data modify storage mobtamer:text data.team.list.green set value '{"text":"＜List of Green Team Participants＞","color":"green"}'

data modify storage mobtamer:text data.cost.up set value '{"text":"The cost limit for a party has been increased."}'

data modify storage mobtamer:text data.tame.tame_type_count set value '{"text":"Number of mob types tamed"}'

data modify storage mobtamer:text data.get.conductor set value '{"text":"The conductor was obtained as a reward for achieving advancement.","color": "yellow"}'

data modify storage mobtamer:text data.trader.trade_unlock set value '{"text":"The following have been added to the tamer trader\'s trade.","color": "green"}'

data modify storage mobtamer:text data.power_up.cannot set value '{"text": "Too close to other enhancement mode pets.","color": "red"}'

data modify storage mobtamer:text data.store.common set value '{"text":"Pets became items.","color": "yellow"}'
data modify storage mobtamer:text data.store.down_far set value '{"text":"You were too far away from the downed pet and the pet became an item.","color": "yellow"}'
data modify storage mobtamer:text data.store.drow set value '{"text":" was drowned in water and became an item.","color": "yellow"}'
data modify storage mobtamer:text data.store.cost_over set value '{"text": "Pets became an item because the party\'s cost limit was exceeded.","color": "red"}'

data modify storage mobtamer:text data.pet.die set value '{"text":" died.","color":"red"}'
data modify storage mobtamer:text data.pet.custom_attack set value '{"text":" can now attack.","color":"yellow"}'
data modify storage mobtamer:text data.pet.release set value '{"text":" was released.","color":"yellow"}'
data modify storage mobtamer:text data.pet.tame set value '{"text":" was successfully tamed!","color":"yellow"}'
data modify storage mobtamer:text data.pet.down set value '{"text":" is now down.","color":"red"}'

data modify storage mobtamer:text data.ride.too_weight set value '{"text": "Too heavy.","color": "red"}'

data modify storage mobtamer:text data.caution.air set value '{"text":"　Mobs that cannot breathe on the ground will be able to breathe on the ground when made into pets."}'
data modify storage mobtamer:text data.caution.bucket set value '{"text":"　Pet data is lost when pets are collected in buckets."}'
data modify storage mobtamer:text data.caution.creeper set value '{"text":"　Pet creepers disappear after the explosion."}'
data modify storage mobtamer:text data.caution.drowned set value '{"text":"　Pet drounds cannot attack enemy drounds."}'
data modify storage mobtamer:text data.caution.ender_dragon1 set value '{"text":"　Ender dragons destroy terrain."}'
data modify storage mobtamer:text data.caution.ender_dragon2 set value '{"text":"　The Ender Dragon damages surrounding mobs (including players) even if they are pets."}'
data modify storage mobtamer:text data.caution.evoker set value '{"text":"　Vex, summoned by his pet evoker, is also an ally."}'
data modify storage mobtamer:text data.caution.iron_golem set value '{"text":"　A pet iron golem may attack a friendly monster."}'
data modify storage mobtamer:text data.caution.phantom set value '{"text":"　Phantoms cannot be summoned during the day and will be itemized."}'
data modify storage mobtamer:text data.caution.piglin1 set value '{"text":"　Piglin and wither skeltons can be hostile to each other, even among pets."}'
data modify storage mobtamer:text data.caution.piglin2 set value '{"text":"　Piglin pets do not attack the piglins."}'
data modify storage mobtamer:text data.caution.raider set value '{"text":"　Evil villager pets do not attack evil villagers."}'
data modify storage mobtamer:text data.caution.silverfish set value '{"text":"　Silverfish have a tendency to hide behind stones when they stand on them, so that they become an item when they stand on stones."}'
data modify storage mobtamer:text data.caution.slimes set value '{"text":"　Slime and magma cubes, even as pets, will damage players who approach them."}'
data modify storage mobtamer:text data.caution.summon set value '{"text":"　If you use a spawn egg with your eyes on a mob of the same species as the mob you wish to summon, you may summon a child mob with missing pet data."}'
data modify storage mobtamer:text data.caution.wither_skeleton set value '{"text":"　Pigglins and wither skeltons can be hostile to each other, even among pets."}'
data modify storage mobtamer:text data.caution.wither1 set value '{"text":"　Withers indiscriminately attack mobs outside the surrounding team."}'
data modify storage mobtamer:text data.caution.wither2 set value '{"text":"　Withers do not attack the undead."}'
data modify storage mobtamer:text data.caution.zoglin set value '{"text":"　Zoglin indiscriminately attacks mobs outside the surrounding team."}'
data modify storage mobtamer:text data.caution.zombification set value '{"text":"　Piglins and hoglins will not become zombified in this life if they are made into pets."}'

data modify storage mobtamer:text data.mode.info set value '{"text":"INFO"}'
data modify storage mobtamer:text data.mode.stop set value '{"text":"STOP"}'
data modify storage mobtamer:text data.mode.gather set value '{"text":"GATHER"}'
data modify storage mobtamer:text data.mode.attack set value '{"text":"ATTACK"}'
data modify storage mobtamer:text data.mode.store set value '{"text":"STORE"}'
data modify storage mobtamer:text data.mode.ride set value '{"text":"RIDE"}'
data modify storage mobtamer:text data.mode.power_up set value '{"text":"TRAIN"}'
data modify storage mobtamer:text data.mode.strategy set value '{"text":"TACTICS"}'

data modify storage mobtamer:text data.strategy.attack set value '{"text":"ATTACK"}'
data modify storage mobtamer:text data.strategy.balance set value '{"text":"BALANCE"}'
data modify storage mobtamer:text data.strategy.recover set value '{"text":"RECOVER"}'
data modify storage mobtamer:text data.strategy.follow set value '{"text":"FOLLOW"}'

data modify storage mobtamer:text data.ride.over_mob set value '{"text":"Mob riding on top"}'
data modify storage mobtamer:text data.ride.over_player set value '{"text":"Player riding on top"}'
data modify storage mobtamer:text data.ride.stop set value '{"text":"Stop riding"}'
data modify storage mobtamer:text data.ride.select_over set value '{"text":"Select a mob to ride"}'
data modify storage mobtamer:text data.ride.select_under set value '{"text":"Select mobs to be ridden"}'
data modify storage mobtamer:text data.ride.over set value '{"text":"Upper"}'
data modify storage mobtamer:text data.ride.under set value '{"text":"Lower"}'

data modify storage mobtamer:text data.unique.phantom.store set value '{"text":"Phantom cannot be summoned during daylight hours.","color": "red"}'
data modify storage mobtamer:text data.unique.silverfish.store set value '{"text":"Silverfish became an item because it was hidden in stone.","color": "red"}'

data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"Welcome to the world of MobTamer!","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.welcome append value '[{"text":"In this world, you can tame all mobs with ","color": "green","italic": true},{"translate":"item.minecraft.golden_apple","color": "aqua","italic":true},{"text":".","color": "green","italic": true}]'
data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"Tamed mobs become your pets and you can walk with them or have them fight with you.","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"If you have questions, MobTamer\'s instructions will tell you.","color": "green","italic": true}'

data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"＜Conductor＞","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"By using items called conductors, you can perform various actions on mobs. (For example, you can turn a pet into an item or ride a mob.)","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"Conductors can be purchased from special traders called tamer traders. Items to meet tamer traders can be obtained by trading with regular traders.","color": "green","italic": true}'

data modify storage mobtamer:text data.tutorial.pet_equipment append value '{"text":"＜Equipment for Pets＞","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.pet_equipment append value '{"text":"As the number of tamed mobs increases, equipment for pets is added to the tamer trader\'s trade.","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.pet_equipment append value '{"text":"Equipment deals for pets change randomly and are updated each morning.","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.pet_equipment append value '{"text":"You can equip your pet by throwing pet equipment to the pet stopped by the conductor.","color": "green","italic": true}'

data modify storage mobtamer:text data.tutorial.trader append value '{"text":"＜Tamer Traders＞","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.trader append value '{"text":"An item will be added to the regular peddler\'s transactions to call tamer merchants.","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.trader append value '{"text":"Conductors, data pack settings, and instruction manuals can be obtained by trading with tamer merchants.","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.trader append value '{"text":"Transactions will increase with rewards for achieving progress, and pet gachas and equipment for pets will be added.","color": "green","italic": true}'

data modify storage mobtamer:text data.item.conductor.Name set value '{"text":"Conductor","italic":false}'
data modify storage mobtamer:text data.item.conductor.Lore.info set value '{"text":" 【Mode：INFO】","italic":"false","color":"green"}'
data modify storage mobtamer:text data.item.conductor.Lore.stop set value '{"text":" 【Mode：STOP】","italic":"false","color":"blue"}'
data modify storage mobtamer:text data.item.conductor.Lore.gather set value '{"text":" 【Mode：GATHER】","italic":"false","color":"yellow"}'
data modify storage mobtamer:text data.item.conductor.Lore.attack set value '{"text":" 【Mode：ATTACK】","italic":"false","color":"red"}'
data modify storage mobtamer:text data.item.conductor.Lore.store set value '{"text":" 【Mode：STORE】","italic":"false","color":"gold"}'
data modify storage mobtamer:text data.item.conductor.Lore.ride set value '{"text":" 【Mode：RIDE】","italic":"false","color":"dark_red"}'
data modify storage mobtamer:text data.item.conductor.Lore.power_up set value '{"text":" 【Mode：TRAIN】","italic":"false","color":"aqua"}'
data modify storage mobtamer:text data.item.conductor.Lore.strategy set value '{"text":" 【Mode：TACTICS】","italic":"false","color":"light_purple"}'

data modify storage mobtamer:text data.item.conductor.Lore.common append value '{"text":" Select the target with a short sneak","italic":"false"}'
data modify storage mobtamer:text data.item.conductor.Lore.common append value '{"text":" Execute in action","italic":"false"}'
data modify storage mobtamer:text data.item.conductor.Lore.common append value '{"text":" Change mode by drop from main hand","italic":"false"}'
data modify storage mobtamer:text data.item.conductor.Lore.common append value '{"text":" Choose tactics in action during the sneak","italic":"false"}'

data modify storage mobtamer:text data.item.custom_attack.Name set value '{"text":"Arrow of Attack","italic": false}'
data modify storage mobtamer:text data.item.custom_attack.Lore set value ['[{"text":"Dropping toward a pet stopped by a conductor will cause the pet to attack the enemy, even if it does not normally attack.","italic":false}]','[{"text":"（Experimental feature）","italic":false,"color":"red"}]']

data modify storage mobtamer:text data.item.pet_release.Name set value '{"text":"Pet Releaser","italic": false}'
data modify storage mobtamer:text data.item.pet_release.Lore set value ['[{"text":"The pet is released by dropping it toward the pet stopped by the conductor. Released pets belong to a common team and act freely.","italic":false}]']

data modify storage mobtamer:text data.item.trader.Name set value '{"text":"Summon Tamer Trader","italic": false}'
data modify storage mobtamer:text data.item.pet_equipment_trader.Name set value '{"text":"Summon Pet Equipment Trader","italic": false}'
data modify storage mobtamer:text data.item.cheat_trader.Name set value '{"text":"Summon Cheat Trader","italic": false}'

data modify storage mobtamer:text data.item.immediate_tame.Name set value '{"text":"Golden Apple (Definite Tame)","color":"aqua","italic": false}'

data modify storage mobtamer:text data.item.bronze_gacha.Name set value '{"text":"Bronze Gacha","italic": false,"color":"#FF9C33"}'
data modify storage mobtamer:text data.item.bronze_gacha.Lore set value ['[{"text":"When this item is dropped, a randomly drawn pet is obtained.","italic":false}]','[{"text":"","italic":false}]','[{"text":"Pets that appear：","italic":false,"color":"blue"}]','[{"text":"　Excluding some boss-level mobs.","italic":false,"color":"blue"}]','[{"text":"　Tamed mobs only","italic":false,"color":"blue"}]']
data modify storage mobtamer:text data.item.silver_gacha.Name set value '{"text":"Silver Gacha","italic": false,"color":"#D1D1D1"}'
data modify storage mobtamer:text data.item.silver_gacha.Lore set value ['[{"text":"When this item is dropped, a randomly drawn pet is obtained.","italic":false}]','[{"text":"","italic":false}]','[{"text":"Pets that appear：","italic":false,"color":"blue"}]','[{"text":"　Excluding some animals and boss-level mobs.","italic":false,"color":"blue"}]','[{"text":"　Tamed mobs only","italic":false,"color":"blue"}]']
data modify storage mobtamer:text data.item.gold_gacha.Name set value '{"text":"Gold Gacha","italic": false,"color":"yellow"}'
data modify storage mobtamer:text data.item.gold_gacha.Lore set value ['[{"text":"When this item is dropped, a randomly drawn pet is obtained.","italic":false}]','[{"text":"","italic":false}]','[{"text":"Pets that appear：","italic":false,"color":"blue"}]','[{"text":"　Excluding some animal mobs and ender dragon.","italic":false,"color":"blue"}]','[{"text":"　Tamed mobs only","italic":false,"color":"blue"}]']
data modify storage mobtamer:text data.item.diamond_gacha.Name set value '{"text":"Diamond Gacha","italic": false,"color":"aqua"}'
data modify storage mobtamer:text data.item.diamond_gacha.Lore set value ['[{"text":"When this item is dropped, a randomly drawn pet is obtained.","italic":false}]','[{"text":"","italic":false}]','[{"text":"Pets that appear：","italic":false,"color":"blue"}]','[{"text":"　Excluding some animal mobs and ender dragon.","italic":false,"color":"blue"}]','[{"text":"　Includes untamed mobs","italic":false,"color":"blue"}]','[{"text":"　Includes command-only mobs","italic":false,"color":"blue"}]']

data modify storage mobtamer:text data.entity_name.trader set value '{"text":"Tamer Trader"}'
data modify storage mobtamer:text data.entity_name.pet_equipment_trader set value '{"text":"Pet Equipment Trader"}'
data modify storage mobtamer:text data.entity_name.cheat_trader set value '{"text":"Cheat Trader"}'

data modify storage mobtamer:text data.common.nothing set value '{"text":"  Notiong"}'
data modify storage mobtamer:text data.common.for_pet set value '{"text":"(For pets)"}'
data modify storage mobtamer:text data.common.summon_trader set value '{"text":"Summon Tamer Trader"}'
data modify storage mobtamer:text data.common.summon_equipment_trader set value '{"text":"Summon Pet Equipment Trader"}'
data modify storage mobtamer:text data.common.total_cost set value '{"text": "Total cost of party"}'
data modify storage mobtamer:text data.common.caution set value '{"text":"Caution"}'
data modify storage mobtamer:text data.common.selecting set value '{"text":"Selecting"}'
data modify storage mobtamer:text data.common.mode set value '{"text":"Mode"}'
data modify storage mobtamer:text data.common.all_pets set value '{"text":"All Pets"}'
data modify storage mobtamer:text data.common.individual set value '{"text":"Indivisual"}'
data modify storage mobtamer:text data.common.determine_by_action set value '{"text":"Determine by Action"}'

data modify storage mobtamer:text data.common.bronze_gacha set value '{"text":"Bronze Gacha"}'
data modify storage mobtamer:text data.common.silver_gacha set value '{"text":"Silver Gacha"}'
data modify storage mobtamer:text data.common.gold_gacha set value '{"text":"Gold Gacha"}'
data modify storage mobtamer:text data.common.diamond_gacha set value '{"text":"Diamond Gacha"}'

team modify mt.common displayName "Common Team"
