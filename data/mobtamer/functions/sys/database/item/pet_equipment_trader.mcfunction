
data modify storage mobtamer:database data.item.pet_equipment_trader.display merge value {Name:'"ペット装備商人を呼ぶ"'}
data modify storage mobtamer:database data.item.pet_equipment_trader.EntityTag merge value {CustomName:'"ペット装備商人"',CustomNameVisible:1b,NoAI:1b,Tags:["mt.trader","mt.trader.pet_equipment"],PersistenceRequired:1b,Silent:1b,DeathLootTable:"mobtamer:item/pet_equipment_trader"}
data modify storage mobtamer:database data.item.pet_equipment_trader.EntityTag.Offers.Recipes set value []
