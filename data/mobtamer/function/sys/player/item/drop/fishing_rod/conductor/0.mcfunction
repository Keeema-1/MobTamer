execute on origin if entity @s[tag=mt.player_check] run scoreboard players set $mt.drop.fishint_rod mt.score 1

execute unless data storage mobtamer:temp data.player.SelectedItem.id on origin run loot replace entity @s weapon.mainhand loot mobtamer:item/conductor
execute if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run loot replace entity @s weapon.offhand loot mobtamer:item/conductor

data modify storage mobtamer:temp data.source set from entity @s Item.components."minecraft:custom_data".mt_state
execute store result score $mt.conductor.mode1 mt.score run data get storage mobtamer:temp data.source.mode1
scoreboard players add $mt.conductor.mode1 mt.score 1
execute if score $mt.conductor.mode1 mt.score matches 8.. run scoreboard players set $mt.conductor.mode1 mt.score 0
execute store result storage mobtamer:temp data.source.mode1 int 1 run scoreboard players get $mt.conductor.mode1 mt.score

# execute unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/state
# execute if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/state

# data modify storage mobtamer:temp data.source set value []
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.info mt.score unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/info
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.info mt.score if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/info

execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.stop mt.score unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/stop
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.stop mt.score if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/stop

execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.gather mt.score unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/gather
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.gather mt.score if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/gather

execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.attack mt.score unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/attack
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.attack mt.score if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/attack

execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.store mt.score unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/store
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.store mt.score if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/store

execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.ride mt.score unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/ride
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.ride mt.score if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/ride

execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.power_up mt.score unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/power_up
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.power_up mt.score if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/power_up

execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.strategy mt.score unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/strategy
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.strategy mt.score if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/strategy

# execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.stop mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.stop
# execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.gather mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.gather
# execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.attack mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.attack
# execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.store mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.store
# execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.ride mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.ride
# execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.power_up mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.power_up
# execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.strategy mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.strategy

# data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.common[0]
# data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.common[1]
# execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.strategy mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.common[3]
# data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.common[2]

# execute unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/lore
# execute if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/lore

data remove storage mobtamer:temp data.source

kill @s

scoreboard players reset $mt.conductor.mode1 mt.score

scoreboard players reset $mt.drop.fishint_rod mt.score

execute on origin run playsound ui.button.click master @s ~ ~ ~ 1 1

function mobtamer:sys/common/info/kill/mine/0
