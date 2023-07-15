
summon area_effect_cloud ~ ~ ~ {Duration:6000,Radius:0.0f,Effects:[],Tags:["mt.new","mt.info","mt.info.selected"],Passengers:[{id:"text_display",transformation:{translation:[0.0f,0.0f,0.0f]},background:2130706432,billboard:"vertical",alignment:"left",Tags:["mt.info","mt.info.selected"],brightness:{block:15,sky:15}}]}

execute as @e[type=area_effect_cloud,tag=mt.new,distance=..1,limit=1] run function mobtamer:sys/player/item/conductor/use/info/010
