execute if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}] run data modify storage mobtamer:temp data.item_tag set from storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}].tag
execute if data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} run data modify storage mobtamer:temp data.item_tag set from storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}}.tag

execute store result score $mt.conductor.mode1 mt.score run data get storage mobtamer:temp data.item_tag.mt_state.mode1
execute store result score $mt.conductor.mode2 mt.score run data get storage mobtamer:temp data.item_tag.mt_state.mode2
execute store result score $mt.conductor.slot mt.score run data get storage mobtamer:temp data.item_tag.mt_state.slot

function mobtamer:sys/player/item/conductor/title/0
execute anchored eyes positioned ^ ^ ^ as @e[type=fishing_bobber,distance=..2] run function mobtamer:sys/player/item/conductor/use_check

execute if score @s mt.sneak_time matches 1..8 unless predicate mobtamer:is_sneaking run function mobtamer:sys/player/item/conductor/short_sneak/0

function mobtamer:sys/player/item/conductor/always/0

scoreboard players reset $mt.conductor.mode1 mt.score
scoreboard players reset $mt.conductor.mode2 mt.score
scoreboard players reset $mt.conductor.slot mt.score
data remove storage mobtamer:temp data.item_tag

# Qキーでのドロップ検知，セレクトペットのGlowing解除
tag @s add mt.handitem_was_conductor
