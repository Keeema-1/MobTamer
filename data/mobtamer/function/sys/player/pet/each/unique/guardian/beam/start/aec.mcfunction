
ride @s mount @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]

data modify entity @s Owner set from storage mobtamer:temp data.target.UUID

tag @s remove mt.new
