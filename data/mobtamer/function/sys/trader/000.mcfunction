
tag @s add mt.edit_check

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",count:1b},buyB:{id:"air",count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"wandering_trader_spawn_egg",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.trader
data modify entity @s Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",Count:1b},buyB:{id:"air",Count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"wandering_trader_spawn_egg",Count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.pet_equipment_trader
execute if data storage mobtamer:settings data.release_progress{pet_equipment_trader:1b} run data modify entity @s Offers.Recipes append from storage mobtamer:temp data.item

data remove storage mobtamer:temp data.item
