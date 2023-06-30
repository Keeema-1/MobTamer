
#tellraw @a [{"text":"  mode: "},{"score":{"name": "$mt.conductor.mode1","objective": "mt.score"}},{"text":"  slot: "},{"score":{"name": "$mt.conductor.slot","objective": "mt.score"}}]

execute if score $mt.conductor.mode1 mt.score matches 0 run function mobtamer:sys/player/item/conductor/use/stop/0
execute if score $mt.conductor.mode1 mt.score matches 1 run function mobtamer:sys/player/item/conductor/use/store/0
execute if score $mt.conductor.mode1 mt.score matches 3 run function mobtamer:sys/player/item/conductor/use/attack/0
execute if score $mt.conductor.mode1 mt.score matches 4 run function mobtamer:sys/player/item/conductor/use/ride/0
execute if score $mt.conductor.mode1 mt.score matches 5 run function mobtamer:sys/player/item/conductor/use/power_up/0

playsound ui.button.click master @s ~ ~ ~ 1 1
