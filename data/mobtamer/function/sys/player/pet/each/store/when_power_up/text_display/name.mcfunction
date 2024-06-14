
function mobtamer:sys/player/pet/each/store/when_power_up/text_display/common

tag @s add mt.text_display.power_up.name

data merge entity @s {transformation:{translation:[0.0f,0.5f,0.0f]}}

data modify entity @s text set from entity @e[type=item,tag=mt.new,limit=1] Item.components.custom_name
