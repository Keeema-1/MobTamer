
function mobtamer:sys/database/item/trader
data modify entity @s Offers.Recipes set from storage mobtamer:database data.item.trader.entity_data.Offers.Recipes
data modify entity @s Offers.Recipes append from storage mobtamer:database data.daily.pet_equipment[]

execute if entity @s[tag=mt.trader.pet_equipment] run data modify entity @s Offers.Recipes set from storage mobtamer:database data.daily.pet_equipment_trader

execute if entity @s[tag=mt.trader.cheat] run data modify entity @s Offers.Recipes set from storage mobtamer:database data.item.cheat_trader.entity_data.Offers.Recipes

execute if entity @p[team=mt.common] run team join mt.common @s
execute if entity @p[team=mt.red] run team join mt.red @s
execute if entity @p[team=mt.blue] run team join mt.blue @s
execute if entity @p[team=mt.green] run team join mt.green @s
execute if entity @p[team=mt.gold] run team join mt.gold @s
