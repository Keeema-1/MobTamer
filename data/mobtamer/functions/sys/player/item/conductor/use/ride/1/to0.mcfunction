
data modify storage mobtamer:temp data.source set from storage mobtamer:temp data.item_tag.mt_state
data modify storage mobtamer:temp data.source.mode2 set value 0
# execute store result storage mobtamer:temp data.source.slot int 1 run scoreboard players get @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] mt.slot
# execute unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet,limit=1] run data modify storage mobtamer:temp data.source.slot set value -1

execute if data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} run item modify entity @s weapon.mainhand mobtamer:conductor/state
execute unless data storage mobtamer:temp data.player.SelectedItem{tag:{mt_conductor:1b}} if data storage mobtamer:temp data.player.Inventory[{Slot:-106b,tag:{mt_conductor:1b}}] run item modify entity @s weapon.offhand mobtamer:conductor/state
