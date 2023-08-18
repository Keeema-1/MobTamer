execute if data storage mobtamer:settings data{advancement_player:"one"} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{advancement_player:"all"} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.advancement_player set value "all"
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "進捗達成プレイヤー条件","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"テイム進捗を達成するプレイヤーの条件を変更"},{"text":"\n\nデフォルト：金のリンゴを投げたプレイヤーのみ","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜ログイン中のプレイヤー全員＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 232"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.advancement_player set value "one"
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "進捗達成プレイヤー条件","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"テイム進捗を達成するプレイヤーの条件を変更"},{"text":"\n\nデフォルト：金のリンゴを投げたプレイヤーのみ","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜金のリンゴを投げたプレイヤーのみ＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 232"}}]
scoreboard players reset $mt.check mt.score
