execute if data storage mobtamer:settings data{equipment_when_tame:"only_initial_equipment"} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{equipment_when_tame:"any"} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.equipment_when_tame set value "any"
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "テイム時のペットの装備","color": "green","hoverEvent": {"action": "show_text","value": "スポーン時の装備のみ有効とするか否か"}},{"text": "","color": "yellow"},{"text": " ＜すべて有効＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 12"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.equipment_when_tame set value "only_initial_equipment"
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "テイム時のペットの装備","color": "green","hoverEvent": {"action": "show_text","value": "スポーン時の装備のみ有効とするか否か"}},{"text": "","color": "yellow"},{"text": " ＜スポーン時の装備のみ有効＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 12"}}]
scoreboard players reset $mt.check mt.score
