execute if data storage mobtamer:settings data{auto_store_down_pet:0b} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{auto_store_down_pet:1b} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.auto_store_down_pet set value 1b
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "ダウン時の自動格納","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ダウンしたペットを自動でアイテム化するか否か"},{"text":"\n\nデフォルト：無効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜有効＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 192"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.auto_store_down_pet set value 0b
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "ダウン時の自動格納","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ダウンしたペットを自動でアイテム化するか否か"},{"text":"\n\nデフォルト：無効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜無効＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 192"}}]
scoreboard players reset $mt.check mt.score
