
function mobtamer:sys/player/pet/each/store/when_power_up/text_display/common

tag @s add mt.text_display.power_up.explain

data merge entity @s {transformation:{translation:[0.0f,1.2f,0.0f]}}
