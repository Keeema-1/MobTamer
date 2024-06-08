# data modify storage mobtamer:database data.item.trader.display.Name set from storage mobtamer:text data.item.trader.Name
data modify storage mobtamer:database data.item.trader.custom_name set from storage mobtamer:text data.item.trader.Name
data modify storage mobtamer:database data.item.trader.entity_data.CustomName set from storage mobtamer:text data.entity_name.trader
data modify storage mobtamer:database data.item.trader.entity_data merge value {id:"wandering_trader",CustomNameVisible:1b,NoAI:1b,Tags:["mt.trader"],PersistenceRequired:1b,Silent:1b,DeathLootTable:"mobtamer:item/trader"}
data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes set value []

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",count:1b},buyB:{id:"air",count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"written_book",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.manual
data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",count:1b},buyB:{id:"air",count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"written_book",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.settings
data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",count:1b},buyB:{id:"air",count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"fishing_rod",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.conductor
data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",count:8b},buyB:{id:"air",count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"apple",count:1b}}
data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",count:8b},buyB:{id:"air",count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"name_tag",count:1b}}
data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",count:1b},buyB:{id:"air",count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"feather",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.pet_release
data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"diamond",count:1b},buyB:{id:"air",count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"arrow",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.custom_attack
data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"golden_apple",count:1b},buyB:{id:"copper_ingot",count:1b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"book",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.bronze_gacha
execute if data storage mobtamer:settings data.release_progress.gacha{bronze:1b} run data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"golden_apple",count:1b},buyB:{id:"copper_ingot",count:16b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"book",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.silver_gacha
execute if data storage mobtamer:settings data.release_progress.gacha{silver:1b} run data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"golden_apple",count:1b},buyB:{id:"copper_ingot",count:64b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"book",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.gold_gacha
execute if data storage mobtamer:settings data.release_progress.gacha{gold:1b} run data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"golden_apple",count:2b},buyB:{id:"copper_ingot",count:64b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:1b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"book",count:1b}}
data modify storage mobtamer:temp data.item.sell.components merge from storage mobtamer:database data.item.diamond_gacha
execute if data storage mobtamer:settings data.release_progress.gacha{diamond:1b} run data modify storage mobtamer:database data.item.trader.entity_data.Offers.Recipes append from storage mobtamer:temp data.item

data remove storage mobtamer:temp data
