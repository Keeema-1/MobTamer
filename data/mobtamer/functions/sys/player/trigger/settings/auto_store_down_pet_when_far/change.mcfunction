execute if data storage mobtamer:settings data{auto_store_down_pet_when_far:0b} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{auto_store_down_pet_when_far:1b} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.auto_store_down_pet_when_far set value 1b
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "ダウンペットと離れた時","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ダウン状態のペットと32ブロック以上離れたときの仕様"},{"text":"\n\nデフォルト：何も起こらない","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜自動でアイテム化する＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 202"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.auto_store_down_pet_when_far set value 0b
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "ダウンペットと離れた時","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ダウン状態のペットと32ブロック以上離れたときの仕様"},{"text":"\n\nデフォルト：何も起こらない","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜何も起こらない＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 202"}}]
scoreboard players reset $mt.check mt.score