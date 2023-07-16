
tag @s add mt.edit_check

data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"copper_ingot",Count:1b},buyB:{id:"air",Count:0b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:10000}
data modify storage mobtamer:temp data.item merge value {sell:{id:"wandering_trader_spawn_egg",Count:1b}}
data modify storage mobtamer:temp data.item.sell.tag merge from storage mobtamer:database data.item.trader
data modify entity @s Offers.Recipes append from storage mobtamer:temp data.item

data remove storage mobtamer:temp data.item
