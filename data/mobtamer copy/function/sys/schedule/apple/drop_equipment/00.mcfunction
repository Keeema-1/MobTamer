
summon item ~ ~ ~ {Item:{id:"stick",count:1b},Tags:["mt.new"]}
execute as @e[type=item,tag=mt.new,limit=1,distance=..1] run function mobtamer:sys/schedule/apple/drop_equipment/000
