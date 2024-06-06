function mobtamer:sys/common/team/same_tag/add
# 流用
execute as @e[type=#mobtamer:be_hostile/always,tag=!mt.same_team,predicate=mobtamer:targeting,distance=..24,sort=nearest,limit=1] run function mobtamer:sys/player/pet/each/unique/guardian/beam/start/000
function mobtamer:sys/common/team/same_tag/remove
