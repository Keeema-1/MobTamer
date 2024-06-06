
data modify storage mobtamer:database data.item.pet_equipment_trader.display.Name set from storage mobtamer:text data.item.pet_equipment_trader.Name
data modify storage mobtamer:database data.item.pet_equipment_trader.EntityTag.CustomName set from storage mobtamer:text data.entity_name.pet_equipment_trader
data modify storage mobtamer:database data.item.pet_equipment_trader.EntityTag merge value {CustomNameVisible:1b,NoAI:1b,Tags:["mt.trader","mt.trader.pet_equipment"],PersistenceRequired:1b,Silent:1b,DeathLootTable:"mobtamer:item/pet_equipment_trader"}
data modify storage mobtamer:database data.item.pet_equipment_trader.EntityTag.Offers.Recipes set value []
