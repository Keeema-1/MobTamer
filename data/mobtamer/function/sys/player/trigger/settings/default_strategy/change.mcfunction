function mobtamer:sys/common/player/settings/score2storage
execute if data storage mobtamer:temp data.player_settings{default_strategy:"attack"} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:temp data.player_settings{default_strategy:"balance"} run scoreboard players set $mt.check mt.score 1
execute if data storage mobtamer:temp data.player_settings{default_strategy:"recover"} run scoreboard players set $mt.check mt.score 2
execute if data storage mobtamer:temp data.player_settings{default_strategy:"follow"} run scoreboard players set $mt.check mt.score 3
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:temp data.player_settings.default_strategy set value "balance"
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "デフォルトの作戦","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\n\nデフォルト：攻撃優先","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜バランス＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 172"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:temp data.player_settings.default_strategy set value "recover"
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "デフォルトの作戦","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\n\nデフォルト：攻撃優先","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜回復優先＞ ","color": "green"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 172"}}]
execute if score $mt.check mt.score matches 2 run data modify storage mobtamer:temp data.player_settings.default_strategy set value "follow"
execute if score $mt.check mt.score matches 2 run tellraw @s ["",{"text": "  "},{"text": "デフォルトの作戦","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\n\nデフォルト：攻撃優先","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜追従優先＞ ","color": "yellow"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 172"}}]
execute if score $mt.check mt.score matches 3 run data modify storage mobtamer:temp data.player_settings.default_strategy set value "attack"
execute if score $mt.check mt.score matches 3 run tellraw @s ["",{"text": "  "},{"text": "デフォルトの作戦","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\n\nデフォルト：攻撃優先","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜攻撃優先＞ ","color": "red"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 172"}}]
scoreboard players reset $mt.check mt.score
function mobtamer:sys/common/player/settings/storage2score
data remove storage mobtamer:temp data.player_settings
