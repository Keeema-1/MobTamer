
tag @s add mt.text_display.power_up

data merge entity @s {billboard:"vertical"}

ride @s mount @e[type=item,tag=mt.new,limit=1]
