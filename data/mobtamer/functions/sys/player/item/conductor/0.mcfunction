execute if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}] run data modify storage mobtamer:temp data.item_tag set from storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}].tag
execute if data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} run data modify storage mobtamer:temp data.item_tag set from storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}}.tag

execute store result score $mt.conductor.mode1 mt.score run data get storage mobtamer:temp data.item_tag.mt_state.mode1
execute store result score $mt.conductor.mode2 mt.score run data get storage mobtamer:temp data.item_tag.mt_state.mode2
execute store result score $mt.conductor.slot mt.score run data get storage mobtamer:temp data.item_tag.mt_state.slot

#execute if score $mt.conductor.mode mt.score matches 0 run title @a actionbar [{"text":"モード：停止"},{"score":{"name": "$mt.conductor.mode","objective": "mt.score"}}]
execute if score $mt.conductor.mode1 mt.score matches 0 run title @a[tag=mt.player_check] actionbar [{"text":"モード：停止"}]
execute if score $mt.conductor.mode1 mt.score matches 1 run title @a[tag=mt.player_check] actionbar [{"text":"モード：格納"}]
execute if score $mt.conductor.mode1 mt.score matches 2 as @e[team=mt.common,tag=mt.player_check,tag=mt.pet,sort=nearest,limit=1] run function mobtamer:sys/player/item/conductor/title/2

execute anchored eyes positioned ^ ^ ^ as @e[type=fishing_bobber,distance=..1] run function mobtamer:sys/player/item/conductor/use_check

scoreboard players reset $mt.conductor.mode1 mt.score
scoreboard players reset $mt.conductor.mode2 mt.score
scoreboard players reset $mt.conductor.slot mt.score
data remove storage mobtamer:temp data.item_tag

tag @s add mt.handitem_was_conductor
