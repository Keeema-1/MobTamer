function mobtamer:sys/common/player/settings/score2storage
execute if data storage mobtamer:temp data.player_settings{baby_grow:0b} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:temp data.player_settings{baby_grow:1b} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:temp data.player_settings.baby_grow set value 1b
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "子供ペットの成長","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"子供のペットの成長を有効とするか否か"},{"text":"\n\nデフォルト：無効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜有効＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 62"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:temp data.player_settings.baby_grow set value 0b
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "子供ペットの成長","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"子供のペットの成長を有効とするか否か"},{"text":"\n\nデフォルト：無効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜無効＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 62"}}]
scoreboard players reset $mt.check mt.score
function mobtamer:sys/common/player/settings/storage2score
data remove storage mobtamer:temp data.player_settings
