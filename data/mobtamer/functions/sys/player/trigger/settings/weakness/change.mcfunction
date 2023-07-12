execute if data storage mobtamer:settings data{weakness:"never"} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{weakness:"only_tame_challenge"} run scoreboard players set $mt.check mt.score 1
execute if data storage mobtamer:settings data{weakness:"always"} run scoreboard players set $mt.check mt.score 2
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.weakness set value "only_tame_challenge"
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "プレイヤーの攻撃力低下","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"プレイヤーの攻撃力と矢のダメージが1/10に低下し、トライデントを投げられなくなる"},{"text":"\n\nデフォルト：無効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜テイムチャレンジ中のみ有効＞ ","color": "yellow"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 92"}}]
execute if score $mt.check mt.score matches 0 run execute as @a run function mobtamer:sys/player/status_update
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.weakness set value "always"
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "プレイヤーの攻撃力低下","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"プレイヤーの攻撃力と矢のダメージが1/10に低下し、トライデントを投げられなくなる"},{"text":"\n\nデフォルト：無効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜常に有効＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 92"}}]
execute if score $mt.check mt.score matches 1 run execute as @a run function mobtamer:sys/player/status_update
execute if score $mt.check mt.score matches 2 run data modify storage mobtamer:settings data.weakness set value "never"
execute if score $mt.check mt.score matches 2 run tellraw @s ["",{"text": "  "},{"text": "プレイヤーの攻撃力低下","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"プレイヤーの攻撃力と矢のダメージが1/10に低下し、トライデントを投げられなくなる"},{"text":"\n\nデフォルト：無効","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜無効＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 92"}}]
execute if score $mt.check mt.score matches 2 run execute as @a run function mobtamer:sys/player/status_update
scoreboard players reset $mt.check mt.score
