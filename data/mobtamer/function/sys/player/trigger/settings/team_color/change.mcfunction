execute if data storage mobtamer:settings data{team_color:white} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{team_color:aqua} run scoreboard players set $mt.check mt.score 1
execute if data storage mobtamer:settings data{team_color:blue} run scoreboard players set $mt.check mt.score 2
execute if data storage mobtamer:settings data{team_color:green} run scoreboard players set $mt.check mt.score 3
execute if data storage mobtamer:settings data{team_color:yellow} run scoreboard players set $mt.check mt.score 4
execute if data storage mobtamer:settings data{team_color:gold} run scoreboard players set $mt.check mt.score 5
execute if data storage mobtamer:settings data{team_color:light_purple} run scoreboard players set $mt.check mt.score 6
execute if data storage mobtamer:settings data{team_color:red} run scoreboard players set $mt.check mt.score 7
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.team_color set value aqua
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "チームカラー","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\n\nデフォルト：ホワイト","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜アクア＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 82"}}]
execute if score $mt.check mt.score matches 0 run team modify mt.common color aqua
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.team_color set value blue
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "チームカラー","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\n\nデフォルト：ホワイト","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜ブルー＞ ","color": "blue"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 82"}}]
execute if score $mt.check mt.score matches 1 run team modify mt.common color blue
execute if score $mt.check mt.score matches 2 run data modify storage mobtamer:settings data.team_color set value green
execute if score $mt.check mt.score matches 2 run tellraw @s ["",{"text": "  "},{"text": "チームカラー","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\n\nデフォルト：ホワイト","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜グリーン＞ ","color": "green"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 82"}}]
execute if score $mt.check mt.score matches 2 run team modify mt.common color green
execute if score $mt.check mt.score matches 3 run data modify storage mobtamer:settings data.team_color set value yellow
execute if score $mt.check mt.score matches 3 run tellraw @s ["",{"text": "  "},{"text": "チームカラー","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\n\nデフォルト：ホワイト","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜イエロー＞ ","color": "yellow"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 82"}}]
execute if score $mt.check mt.score matches 3 run team modify mt.common color yellow
execute if score $mt.check mt.score matches 4 run data modify storage mobtamer:settings data.team_color set value gold
execute if score $mt.check mt.score matches 4 run tellraw @s ["",{"text": "  "},{"text": "チームカラー","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\n\nデフォルト：ホワイト","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜オレンジ＞ ","color": "gold"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 82"}}]
execute if score $mt.check mt.score matches 4 run team modify mt.common color gold
execute if score $mt.check mt.score matches 5 run data modify storage mobtamer:settings data.team_color set value light_purple
execute if score $mt.check mt.score matches 5 run tellraw @s ["",{"text": "  "},{"text": "チームカラー","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\n\nデフォルト：ホワイト","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜パープル＞ ","color": "light_purple"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 82"}}]
execute if score $mt.check mt.score matches 5 run team modify mt.common color light_purple
execute if score $mt.check mt.score matches 6 run data modify storage mobtamer:settings data.team_color set value red
execute if score $mt.check mt.score matches 6 run tellraw @s ["",{"text": "  "},{"text": "チームカラー","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\n\nデフォルト：ホワイト","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜レッド＞ ","color": "red"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 82"}}]
execute if score $mt.check mt.score matches 6 run team modify mt.common color red
execute if score $mt.check mt.score matches 7 run data modify storage mobtamer:settings data.team_color set value white
execute if score $mt.check mt.score matches 7 run tellraw @s ["",{"text": "  "},{"text": "チームカラー","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\n\nデフォルト：ホワイト","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜ホワイト＞ ","color": "white"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 82"}}]
execute if score $mt.check mt.score matches 7 run team modify mt.common color white
scoreboard players reset $mt.check mt.score
