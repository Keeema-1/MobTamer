
summon item ~ ~ ~ {Tags:["mt.new"],Item:{id:"stick",Count:1b}}

execute as @e[type=item,tag=mt.new,distance=..1,limit=1] run data modify entity @s Item set from storage mobtamer:temp data.pet.ArmorItems[3]

tag @e[type=item,tag=mt.new,distance=..1,limit=1] remove mt.new
