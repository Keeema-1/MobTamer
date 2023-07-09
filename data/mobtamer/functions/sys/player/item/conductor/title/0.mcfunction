
#execute if score $mt.conductor.mode mt.score matches 0 run title @a actionbar [{"text":"モード：停止"},{"score":{"name": "$mt.conductor.mode","objective": "mt.score"}}]
execute if score $mt.conductor.mode1 mt.score matches 0 run function mobtamer:sys/player/item/conductor/title/stop/0
execute if score $mt.conductor.mode1 mt.score matches 1 run function mobtamer:sys/player/item/conductor/title/store/0
execute if score $mt.conductor.mode1 mt.score matches 2 run function mobtamer:sys/player/item/conductor/title/info/0
execute if score $mt.conductor.mode1 mt.score matches 3 run function mobtamer:sys/player/item/conductor/title/attack/0
execute if score $mt.conductor.mode1 mt.score matches 4 run function mobtamer:sys/player/item/conductor/title/ride/0
execute if score $mt.conductor.mode1 mt.score matches 5 run function mobtamer:sys/player/item/conductor/title/power_up/0
execute if score $mt.conductor.mode1 mt.score matches 6 run function mobtamer:sys/player/item/conductor/title/gather/0
