execute if data storage mobtamer:settings data{status_variant:1b} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{status_variant:0b} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.status_variant set value 0b
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "モブの個体差","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"テイムしたモブのステータスの個体差を有効とするか否か"},{"text":"\n\nデフォルト：有効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜無効＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 32"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.status_variant set value 1b
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "モブの個体差","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"テイムしたモブのステータスの個体差を有効とするか否か"},{"text":"\n\nデフォルト：有効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜有効＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 32"}}]
scoreboard players reset $mt.check mt.score
