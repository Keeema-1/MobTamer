execute if data storage mobtamer:settings data{can_store_down_pets:1b} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{can_store_down_pets:0b} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.can_store_down_pets set value 0b
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "ダウン中のペットの格納","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ダウン中のペットをアイテム化できるか否か"},{"text":"\n\nデフォルト：可","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜不可＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 182"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.can_store_down_pets set value 1b
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "ダウン中のペットの格納","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ダウン中のペットをアイテム化できるか否か"},{"text":"\n\nデフォルト：可","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜可＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 182"}}]
scoreboard players reset $mt.check mt.score
