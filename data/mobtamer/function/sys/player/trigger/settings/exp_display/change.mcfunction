execute if data storage mobtamer:settings data{exp_display:1b} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{exp_display:0b} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.exp_display set value 0b
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "ペットの獲得経験値表示","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペットがモブを倒して獲得した経験値を表示するか否か"},{"text":"\n\nデフォルト：有効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜無効＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 42"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.exp_display set value 1b
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "ペットの獲得経験値表示","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペットがモブを倒して獲得した経験値を表示するか否か"},{"text":"\n\nデフォルト：有効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜有効＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 42"}}]
scoreboard players reset $mt.check mt.score
