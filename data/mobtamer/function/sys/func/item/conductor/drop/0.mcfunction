
# メインハンドにアイテムがあれば終了
    execute on origin if items entity @s weapon.mainhand * run return 1

# メインハンドにコンダクターを設置
    execute on origin run loot replace entity @s weapon.mainhand loot mobtamer:item/conductor

data modify storage mobtamer:temp data.source set from entity @s Item.components."minecraft:custom_data".mt_state
execute store result score #mt.conductor.mode1 mt.temp run data get storage mobtamer:temp data.source.mode1
scoreboard players add #mt.conductor.mode1 mt.temp 1
execute if score #mt.conductor.mode1 mt.temp matches 8.. run scoreboard players set #mt.conductor.mode1 mt.temp 0
execute store result storage mobtamer:temp data.source.mode1 int 1 run scoreboard players get #mt.conductor.mode1 mt.temp

# execute on origin run item modify entity @s weapon.mainhand mobtamer:conductor/state

# data modify storage mobtamer:temp data.source set value []
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.info mt.score on origin run item modify entity @s weapon.mainhand mobtamer:conductor/info
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.stop mt.score on origin run item modify entity @s weapon.mainhand mobtamer:conductor/stop
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.gather mt.score on origin run item modify entity @s weapon.mainhand mobtamer:conductor/gather
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.attack mt.score on origin run item modify entity @s weapon.mainhand mobtamer:conductor/attack
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.store mt.score on origin run item modify entity @s weapon.mainhand mobtamer:conductor/store
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.ride mt.score on origin run item modify entity @s weapon.mainhand mobtamer:conductor/ride
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.power_up mt.score on origin run item modify entity @s weapon.mainhand mobtamer:conductor/power_up
execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.strategy mt.score on origin run item modify entity @s weapon.mainhand mobtamer:conductor/strategy

# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.stop mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.stop
# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.gather mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.gather
# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.attack mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.attack
# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.store mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.store
# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.ride mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.ride
# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.power_up mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.power_up
# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.strategy mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.strategy

# data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.common[0]
# data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.common[1]
# execute if score #mt.conductor.mode1 mt.temp = #mt.conductor.mode1.strategy mt.score run data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.common[3]
# data modify storage mobtamer:temp data.source append from storage mobtamer:text data.item.conductor.Lore.common[2]

# execute on origin run item modify entity @s weapon.mainhand mobtamer:conductor/lore
# execute if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/lore

data remove storage mobtamer:temp data.source

kill @s

scoreboard players reset #mt.conductor.mode1 mt.temp

execute on origin run playsound ui.button.click master @s ~ ~ ~ 0.5 1

# function mobtamer:sys/common/info/kill/mine/0
