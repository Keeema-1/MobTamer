
data modify storage mobtamer:database data.item.cheat_trader.display.Name set from storage mobtamer:text data.item.cheat_trader.Name
data modify storage mobtamer:database data.item.cheat_trader.EntityTag.CustomName set from storage mobtamer:text data.entity_name.cheat_trader
data modify storage mobtamer:database data.item.cheat_trader.EntityTag merge value {CustomNameVisible:1b,NoAI:1b,Tags:["mt.trader","mt.trader.cheat"],PersistenceRequired:1b,Silent:1b,DeathLootTable:"mobtamer:item/cheat_trader"}
data modify storage mobtamer:database data.item.cheat_trader.EntityTag.Offers.Recipes set value []

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",Count:1b},buyB:{id:"air",Count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"golden_apple",Count:64b,tag:{mt_immediate_tame:1b}}}
data modify storage mobtamer:temp data.item.display.Name set from storage mobtamer:text data.item.immediate_tame.Name
execute if data storage mobtamer:settings data.release_progress.gacha{bronze:1b} run data modify storage mobtamer:database data.item.cheat_trader.EntityTag.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",Count:1b},buyB:{id:"air",Count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"book",Count:64b}}
data modify storage mobtamer:temp data.item.sell.tag merge from storage mobtamer:database data.item.bronze_gacha
execute if data storage mobtamer:settings data.release_progress.gacha{bronze:1b} run data modify storage mobtamer:database data.item.cheat_trader.EntityTag.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",Count:1b},buyB:{id:"air",Count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"book",Count:64b}}
data modify storage mobtamer:temp data.item.sell.tag merge from storage mobtamer:database data.item.silver_gacha
execute if data storage mobtamer:settings data.release_progress.gacha{silver:1b} run data modify storage mobtamer:database data.item.cheat_trader.EntityTag.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",Count:1b},buyB:{id:"air",Count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"book",Count:64b}}
data modify storage mobtamer:temp data.item.sell.tag merge from storage mobtamer:database data.item.gold_gacha
execute if data storage mobtamer:settings data.release_progress.gacha{gold:1b} run data modify storage mobtamer:database data.item.cheat_trader.EntityTag.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",Count:1b},buyB:{id:"air",Count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"book",Count:64b}}
data modify storage mobtamer:temp data.item.sell.tag merge from storage mobtamer:database data.item.diamond_gacha
execute if data storage mobtamer:settings data.release_progress.gacha{diamond:1b} run data modify storage mobtamer:database data.item.cheat_trader.EntityTag.Offers.Recipes append from storage mobtamer:temp data.item


data modify storage mobtamer:temp data.daily.pet_equipment set from storage mobtamer:database data.daily.pet_equipment
data modify storage mobtamer:database data.daily.pet_equipment set value []

function mobtamer:sys/trader/daily_change/pet_equipment/append/wooden_hoe
function mobtamer:sys/trader/daily_change/pet_equipment/append/wooden_pickaxe
function mobtamer:sys/trader/daily_change/pet_equipment/append/wooden_shovel
function mobtamer:sys/trader/daily_change/pet_equipment/append/wooden_sword
function mobtamer:sys/trader/daily_change/pet_equipment/append/wooden_axe
function mobtamer:sys/trader/daily_change/pet_equipment/append/leather_helmet
function mobtamer:sys/trader/daily_change/pet_equipment/append/leather_chestplate
function mobtamer:sys/trader/daily_change/pet_equipment/append/leather_leggings
function mobtamer:sys/trader/daily_change/pet_equipment/append/leather_boots

function mobtamer:sys/trader/daily_change/pet_equipment/append/stone_hoe
function mobtamer:sys/trader/daily_change/pet_equipment/append/stone_pickaxe
function mobtamer:sys/trader/daily_change/pet_equipment/append/stone_shovel
function mobtamer:sys/trader/daily_change/pet_equipment/append/stone_sword
function mobtamer:sys/trader/daily_change/pet_equipment/append/stone_axe

function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_hoe
function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_pickaxe
function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_shovel
function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_sword
function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_axe
function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_helmet
function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_chestplate
function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_leggings
function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_boots

function mobtamer:sys/trader/daily_change/pet_equipment/append/chainmail_helmet
function mobtamer:sys/trader/daily_change/pet_equipment/append/chainmail_chestplate
function mobtamer:sys/trader/daily_change/pet_equipment/append/chainmail_leggings
function mobtamer:sys/trader/daily_change/pet_equipment/append/chainmail_boots

function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_hoe
function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_pickaxe
function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_shovel
function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_sword
function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_axe
function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_helmet
function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_chestplate
function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_leggings
function mobtamer:sys/trader/daily_change/pet_equipment/append/iron_boots

function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_hoe
function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_pickaxe
function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_shovel
function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_sword
function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_axe
function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_helmet
function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_chestplate
function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_leggings
function mobtamer:sys/trader/daily_change/pet_equipment/append/diamond_boots

function mobtamer:sys/trader/daily_change/pet_equipment/append/bow
function mobtamer:sys/trader/daily_change/pet_equipment/append/crossbow
function mobtamer:sys/trader/daily_change/pet_equipment/append/elytra
function mobtamer:sys/trader/daily_change/pet_equipment/append/trident
function mobtamer:sys/trader/daily_change/pet_equipment/append/turtle_helmet

data modify storage mobtamer:database data.daily.pet_equipment[] merge value {buy:{id:"copper_ingot",Count:1b},buyB:{id:"air",Count:0b}}

data modify storage mobtamer:database data.item.cheat_trader.EntityTag.Offers.Recipes append from storage mobtamer:database data.daily.pet_equipment[]

data modify storage mobtamer:database data.daily.pet_equipment set from storage mobtamer:temp data.daily.pet_equipment


data remove storage mobtamer:temp data
