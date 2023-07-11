
function mobtamer:sys/database/item/trader
data modify entity @s Offers.Recipes set from storage mobtamer:database data.item.trader.EntityTag.Offers.Recipes
data modify entity @s Offers.Recipes append from storage mobtamer:database data.daily.pet_equipment[]
