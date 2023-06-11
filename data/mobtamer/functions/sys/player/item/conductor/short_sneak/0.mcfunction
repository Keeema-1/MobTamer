
playsound ui.button.click master @s ~ ~ ~ 1 1

execute if score $mt.conductor.mode1 mt.score matches 4 run function mobtamer:sys/player/item/conductor/short_sneak/ride/0
execute unless score $mt.conductor.mode1 mt.score matches 4 run function mobtamer:sys/player/item/conductor/short_sneak/00
