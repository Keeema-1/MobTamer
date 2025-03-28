
function mobtamer:sys/player/pet/each/store/when_power_up/text_display/common

tag @s add mt.text_display.power_up.attack

data merge entity @s {transformation:{translation:[-2.0f,1.3f,0.0f]}}
