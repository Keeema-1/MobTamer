
function mobtamer:sys/database/item/trader
data modify entity @s Offers.Recipes set from storage mobtamer:database data.item.trader.EntityTag.Offers.Recipes
data modify entity @s Offers.Recipes append from storage mobtamer:database data.daily.pet_equipment[]

execute if entity @p[team=mt.common] run team join mt.common @s
execute if entity @p[team=mt.red] run team join mt.red @s
execute if entity @p[team=mt.blue] run team join mt.blue @s
execute if entity @p[team=mt.green] run team join mt.green @s
execute if entity @p[team=mt.gold] run team join mt.gold @s
