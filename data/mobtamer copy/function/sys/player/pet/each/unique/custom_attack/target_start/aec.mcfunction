
data merge entity @s {Duration:6000,Radius:0.0f,effects:[],Tags:["mt.target_record_entity"]}

ride @s mount @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]

data modify entity @s Owner set from storage mobtamer:temp data.target.UUID
