function mobtamer:sys/common/team/same_tag/add
execute if entity @s[type=!drowned,type=!hoglin,tag=!zoglin] as @e[type=#mobtamer:be_hostile/always,tag=!mt.same_team,predicate=mobtamer:targeting,distance=..12,sort=nearest,limit=1] run function mobtamer:sys/player/pet/each/be_hostile/000
execute if entity @s[type=drowned] as @e[type=#mobtamer:be_hostile/always,type=!drowned,tag=!mt.same_team,predicate=mobtamer:targeting,distance=..12,sort=nearest,limit=1] run function mobtamer:sys/player/pet/each/be_hostile/000
function mobtamer:sys/common/team/same_tag/remove
