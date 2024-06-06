
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.stop mt.score run function mobtamer:sys/player/item/conductor/use/stop/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.store mt.score run function mobtamer:sys/player/item/conductor/use/store/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.attack mt.score run function mobtamer:sys/player/item/conductor/use/attack/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.ride mt.score run function mobtamer:sys/player/item/conductor/use/ride/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.power_up mt.score run function mobtamer:sys/player/item/conductor/use/power_up/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.gather mt.score run function mobtamer:sys/player/item/conductor/use/gather/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.info mt.score run function mobtamer:sys/player/item/conductor/use/info/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.strategy mt.score run function mobtamer:sys/player/item/conductor/use/strategy/0

playsound ui.button.click master @s ~ ~ ~ 1 1
