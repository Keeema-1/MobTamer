execute if data storage mobtamer:settings data{tame_spawn_egg_pos:"here"} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{tame_spawn_egg_pos:"player"} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.tame_spawn_egg_pos set value "player"
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "テイム成功時の卵の位置","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"テイム成功時にペットがアイテム化する位置を変更"},{"text":"\n\nデフォルト：その場所に落ちる","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜金のリンゴを投げたプレイヤーが即時に獲得する＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 242"}}]
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.tame_spawn_egg_pos set value "here"
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "テイム成功時の卵の位置","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"テイム成功時にペットがアイテム化する位置を変更"},{"text":"\n\nデフォルト：その場所に落ちる","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜その場所に落ちる＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 242"}}]
scoreboard players reset $mt.check mt.score
