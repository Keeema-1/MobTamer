data modify storage mobtamer:temp data.item set value {}
data modify storage mobtamer:temp data.item merge value {buy:{id:"golden_chestplate",Count:1b},buyB:{id:"emerald",Count:7b}}
data modify storage mobtamer:temp data.item merge value {xp:0,priceMultiplier:0f,rewardExp:0b,maxUses:1}
data modify storage mobtamer:temp data.item merge value {sell:{id:"golden_chestplate",Count:1b,tag:{mt_pet_equipment:1b,mt_equipment_part:"chest",display:{Name:'[{"translate":"item.minecraft.golden_chestplate","italic":false},{"text": "（ペット用）","italic":false}]',Lore:['[{"text":"コンダクターで停止させた","italic":false}]','[{"text":"ペットに向かってドロップ","italic":false}]','[{"text":"することで装備させること","italic":false}]','[{"text":"ができます。","italic":false}]']}}}}
data modify storage mobtamer:database data.daily.pet_equipment append from storage mobtamer:temp data.item
data remove storage mobtamer:temp data.item
