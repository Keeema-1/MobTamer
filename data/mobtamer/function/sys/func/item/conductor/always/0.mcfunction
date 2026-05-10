
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.ride mt.temp run function mobtamer:sys/func/item/conductor/always/ride/0

execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.info mt.temp run function mobtamer:sys/common/info/kill/far/0

execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.strategy mt.temp run function mobtamer:sys/func/item/conductor/always/strategy/0