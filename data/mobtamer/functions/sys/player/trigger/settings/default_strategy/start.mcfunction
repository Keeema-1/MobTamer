function mobtamer:sys/common/player/settings/score2storage
execute if data storage mobtamer:temp data.player_settings{default_strategy:"attack"} run tellraw @s ["",{"text": "  "},{"text": "デフォルトの作戦","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\n\nデフォルト：攻撃優先","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜攻撃優先＞ ","color": "red"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 172"}}]
execute if data storage mobtamer:temp data.player_settings{default_strategy:"balance"} run tellraw @s ["",{"text": "  "},{"text": "デフォルトの作戦","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\n\nデフォルト：攻撃優先","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜バランス＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 172"}}]
execute if data storage mobtamer:temp data.player_settings{default_strategy:"recover"} run tellraw @s ["",{"text": "  "},{"text": "デフォルトの作戦","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\n\nデフォルト：攻撃優先","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜回復優先＞ ","color": "green"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 172"}}]
execute if data storage mobtamer:temp data.player_settings{default_strategy:"follow"} run tellraw @s ["",{"text": "  "},{"text": "デフォルトの作戦","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\n\nデフォルト：攻撃優先","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜追従優先＞ ","color": "yellow"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 172"}}]
data remove storage mobtamer:temp data.player_settings
