data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"iron_helmet",Count:1b},buyB:{id:"emerald",Count:7b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:1}
data modify storage mobtamer:temp data.item merge value {sell:{id:"iron_helmet",Count:1b,tag:{mt_pet_equipment:1b,mt_equipment_part:"head",display:{Name:'[{"translate":"item.minecraft.iron_helmet","italic":false},{"text": "（ペット用）","italic":false}]'}}}}
data modify storage mobtamer:temp data.item.sell.components."minecraft:lore" set from storage mobtamer:text data.item.pet_equipment.Lore
data modify storage mobtamer:database data.daily.pet_equipment append from storage mobtamer:temp data.item
data remove storage mobtamer:temp data.item
