
#execute if score $mt.conductor.mode mt.score matches 0 run title @a actionbar [{"text":"モード：停止"},{"score":{"name": "$mt.conductor.mode","objective": "mt.score"}}]
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.stop mt.score run function mobtamer:sys/player/item/conductor/title/stop/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.store mt.score run function mobtamer:sys/player/item/conductor/title/store/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.info mt.score run function mobtamer:sys/player/item/conductor/title/info/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.attack mt.score run function mobtamer:sys/player/item/conductor/title/attack/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.ride mt.score run function mobtamer:sys/player/item/conductor/title/ride/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.power_up mt.score run function mobtamer:sys/player/item/conductor/title/power_up/0
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.gather mt.score run function mobtamer:sys/player/item/conductor/title/gather/0
