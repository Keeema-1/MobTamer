execute on origin if entity @s[tag=mt.player_check] run scoreboard players set $mt.drop.fishint_rod mt.score 1

execute unless data storage mobtamer:temp data.player.SelectedItem.id on origin run loot replace entity @s weapon.mainhand loot mobtamer:item/conductor
execute if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run loot replace entity @s weapon.offhand loot mobtamer:item/conductor

data modify storage mobtamer:temp data.source set from entity @s Item.tag.mt_state
execute store result score $mt.conductor.mode1 mt.score run data get storage mobtamer:temp data.source.mode1
scoreboard players add $mt.conductor.mode1 mt.score 1
execute if score $mt.conductor.mode1 mt.score matches 8.. run scoreboard players set $mt.conductor.mode1 mt.score 0
execute store result storage mobtamer:temp data.source.mode1 int 1 run scoreboard players get $mt.conductor.mode1 mt.score

execute unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/state
execute if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/state

execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.info mt.score run data modify storage mobtamer:temp data.source set value ['{"text":" 【モード：情報】","italic":"false","color":"green"}','{"text":" 短スニークで対象選択","italic":"false"}','{"text":" アクションで実行","italic":"false"}','{"text":" メインハンドからドロップでモード変更","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.stop mt.score run data modify storage mobtamer:temp data.source set value ['{"text":" 【モード：停止】","italic":"false","color":"blue"}','{"text":" 短スニークで対象選択","italic":"false"}','{"text":" アクションで実行","italic":"false"}','{"text":" メインハンドからドロップでモード変更","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.gather mt.score run data modify storage mobtamer:temp data.source set value ['{"text":" 【モード：集合】","italic":"false","color":"yellow"}','{"text":" 短スニークで対象選択","italic":"false"}','{"text":" アクションで実行","italic":"false"}','{"text":" メインハンドからドロップでモード変更","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.attack mt.score run data modify storage mobtamer:temp data.source set value ['{"text":" 【モード：攻撃】","italic":"false","color":"red"}','{"text":" 短スニークで対象選択","italic":"false"}','{"text":" アクションで実行","italic":"false"}','{"text":" メインハンドからドロップでモード変更","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.store mt.score run data modify storage mobtamer:temp data.source set value ['{"text":" 【モード：格納】","italic":"false","color":"gold"}','{"text":" 短スニークで対象選択","italic":"false"}','{"text":" アクションで実行","italic":"false"}','{"text":" メインハンドからドロップでモード変更","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.ride mt.score run data modify storage mobtamer:temp data.source set value ['{"text":" 【モード：騎乗】","italic":"false","color":"dark_red"}','{"text":" 短スニークで対象選択","italic":"false"}','{"text":" アクションで実行","italic":"false"}','{"text":" メインハンドからドロップでモード変更","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.power_up mt.score run data modify storage mobtamer:temp data.source set value ['{"text":" 【モード：強化】","italic":"false","color":"aqua"}','{"text":" 短スニークで対象選択","italic":"false"}','{"text":" アクションで実行","italic":"false"}','{"text":" メインハンドからドロップでモード変更","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score = $mt.conductor.mode1.strategy mt.score run data modify storage mobtamer:temp data.source set value ['{"text":" 【モード：作戦】","italic":"false","color":"light_purple"}','{"text":" 短スニークで対象選択","italic":"false"}','{"text":" アクションで実行","italic":"false"}','{"text":" スニーク中にアクションで作戦選択","italic":"false"}','{"text":" メインハンドからドロップでモード変更","italic":"false"}']

execute unless data storage mobtamer:temp data.player.SelectedItem.id on origin run item modify entity @s weapon.mainhand mobtamer:conductor/lore
execute if data storage mobtamer:temp data.player.SelectedItem.id on origin unless data storage mobtamer:temp data.player.Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand mobtamer:conductor/lore

data remove storage mobtamer:temp data.source

kill @s

scoreboard players reset $mt.conductor.mode1 mt.score

scoreboard players reset $mt.drop.fishint_rod mt.score

execute on origin run playsound ui.button.click master @s ~ ~ ~ 1 1

function mobtamer:sys/common/info/kill/mine/0
