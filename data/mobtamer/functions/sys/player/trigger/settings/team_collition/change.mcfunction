execute if data storage mobtamer:settings data{team_collition:1b} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{team_collition:0b} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.team_collition set value 0b
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "チームの衝突設定","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペットを含む味方同士での衝突を有効とするか否か"},{"text":"\n\nデフォルト：有効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜無効＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 62"}}]
execute if score $mt.check mt.score matches 0 run team modify mt.common collisionRule pushOwnTeam
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.team_collition set value 1b
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "チームの衝突設定","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ペットを含む味方同士での衝突を有効とするか否か"},{"text":"\n\nデフォルト：有効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜有効＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 62"}}]
execute if score $mt.check mt.score matches 1 run team modify mt.common collisionRule always
scoreboard players reset $mt.check mt.score
