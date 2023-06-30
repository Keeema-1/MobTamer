execute on origin if entity @s[tag=mt.player_check] run scoreboard players set $mt.drop.fishint_rod mt.score 1
execute if score $mt.drop.fishint_rod mt.score matches 1.. run data modify entity @s PickupDelay set value 0

execute store result score $mt.conductor.mode1 mt.score run data get entity @s Item.tag.mt_state.mode1
scoreboard players add $mt.conductor.mode1 mt.score 1
execute if score $mt.conductor.mode1 mt.score matches 6.. run scoreboard players set $mt.conductor.mode1 mt.score 0
execute store result entity @s Item.tag.mt_state.mode1 int 1 run scoreboard players get $mt.conductor.mode1 mt.score

execute if score $mt.conductor.mode1 mt.score matches 0 run data modify entity @s Item.tag.display.Lore set value ['{"text":"モード：停止","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score matches 1 run data modify entity @s Item.tag.display.Lore set value ['{"text":"モード：格納","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score matches 2 run data modify entity @s Item.tag.display.Lore set value ['{"text":"モード：情報","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score matches 3 run data modify entity @s Item.tag.display.Lore set value ['{"text":"モード：攻撃","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score matches 4 run data modify entity @s Item.tag.display.Lore set value ['{"text":"モード：騎乗","italic":"false"}']
execute if score $mt.conductor.mode1 mt.score matches 5 run data modify entity @s Item.tag.display.Lore set value ['{"text":"モード：強化","italic":"false"}']

scoreboard players reset $mt.conductor.mode1 mt.score

scoreboard players reset $mt.drop.fishint_rod mt.score

execute on origin run playsound ui.button.click master @s ~ ~ ~ 1 1
