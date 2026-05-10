execute if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,components:{"minecraft:custom_data":{mt_conductor:1b}}}] run data modify storage mobtamer:temp data.item_tag set from storage mobtamer:temp data.player.Inventory[{Slot:-106b,components:{"minecraft:custom_data":{mt_conductor:1b}}}].components."minecraft:custom_data"
execute if data storage mobtamer:temp data.player.SelectedItem{components:{"minecraft:custom_data":{mt_conductor:1b}}} run data modify storage mobtamer:temp data.item_tag set from storage mobtamer:temp data.player.SelectedItem{components:{"minecraft:custom_data":{mt_conductor:1b}}}.components."minecraft:custom_data"

execute store result score #mt.conductor.mode1 mt.temp run data get storage mobtamer:temp data.item_tag.mt_state.mode1
execute store result score #mt.conductor.mode2 mt.temp run data get storage mobtamer:temp data.item_tag.mt_state.mode2
execute store result score #mt.conductor.slot mt.temp run data get storage mobtamer:temp data.item_tag.mt_state.slot

function mobtamer:sys/func/item/conductor/title/0
execute anchored eyes positioned ^ ^ ^ as @e[type=fishing_bobber,distance=..2] run function mobtamer:sys/func/item/conductor/hold/use_check

execute if score @s mt.sneak_time matches 1..8 unless predicate mobtamer:is_sneaking if data storage mobtamer:temp data.player{OnGround:1b} run function mobtamer:sys/func/item/conductor/short_sneak/0
execute if score @s mt.sneak_time matches 1..8 unless predicate mobtamer:is_sneaking unless data storage mobtamer:temp data.player{OnGround:1b} if predicate mobtamer:location_water run function mobtamer:sys/func/item/conductor/short_sneak/0

# function mobtamer:sys/func/item/conductor/always/0

scoreboard players reset #mt.conductor.mode1 mt.temp
scoreboard players reset #mt.conductor.mode2 mt.temp
scoreboard players reset #mt.conductor.slot mt.temp
data remove storage mobtamer:temp data.item_tag

# Qキーでのドロップ検知，セレクトペットのGlowing解除
tag @s add mt.handitem_was_conductor
