
playsound ui.button.click master @s ~ ~ ~ 0.5 1

# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.ride mt.temp run function mobtamer:sys/func/item/conductor/short_sneak/ride/0
# execute unless score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.ride mt.temp run function mobtamer:sys/func/item/conductor/short_sneak/00

# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.strategy mt.temp run scoreboard players set @s mt.strategy -1
