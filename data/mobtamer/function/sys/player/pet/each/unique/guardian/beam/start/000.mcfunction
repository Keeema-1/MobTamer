
summon area_effect_cloud ~ ~ ~ {Duration:6000,Radius:0.0f,effects:[],Tags:["mt.new","mt.target_record_entity"]}

data modify storage mobtamer:temp data.target.UUID set from entity @s UUID
execute as @e[type=area_effect_cloud,tag=mt.new,distance=..1,limit=1] run function mobtamer:sys/player/pet/each/unique/guardian/beam/start/aec

scoreboard players set @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] mt.hostile_interval 0