execute if data storage mobtamer:settings data{party_slots:6} run scoreboard players set $mt.check mt.score 0
execute if data storage mobtamer:settings data{party_slots:10} run scoreboard players set $mt.check mt.score 1
execute if data storage mobtamer:settings data{party_slots:100} run scoreboard players set $mt.check mt.score 2
execute if data storage mobtamer:settings data{party_slots:1} run scoreboard players set $mt.check mt.score 3
execute if data storage mobtamer:settings data{party_slots:2} run scoreboard players set $mt.check mt.score 4
execute if data storage mobtamer:settings data{party_slots:3} run scoreboard players set $mt.check mt.score 5
execute if score $mt.check mt.score matches 0 run data modify storage mobtamer:settings data.party_slots set value 10
execute if score $mt.check mt.score matches 0 run tellraw @s ["",{"text": "  "},{"text": "召喚ペット数の上限","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"一度に召喚できるペットの数の上限"},{"text":"\n\nデフォルト：6体","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜10体＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 222"}}]
execute if score $mt.check mt.score matches 0 run scoreboard players set $mt.sys mt.slot 10
execute if score $mt.check mt.score matches 1 run data modify storage mobtamer:settings data.party_slots set value 100
execute if score $mt.check mt.score matches 1 run tellraw @s ["",{"text": "  "},{"text": "召喚ペット数の上限","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"一度に召喚できるペットの数の上限"},{"text":"\n\nデフォルト：6体","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜100体＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 222"}}]
execute if score $mt.check mt.score matches 1 run scoreboard players set $mt.sys mt.slot 100
execute if score $mt.check mt.score matches 2 run data modify storage mobtamer:settings data.party_slots set value 1
execute if score $mt.check mt.score matches 2 run tellraw @s ["",{"text": "  "},{"text": "召喚ペット数の上限","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"一度に召喚できるペットの数の上限"},{"text":"\n\nデフォルト：6体","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜1体＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 222"}}]
execute if score $mt.check mt.score matches 2 run scoreboard players set $mt.sys mt.slot 1
execute if score $mt.check mt.score matches 3 run data modify storage mobtamer:settings data.party_slots set value 2
execute if score $mt.check mt.score matches 3 run tellraw @s ["",{"text": "  "},{"text": "召喚ペット数の上限","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"一度に召喚できるペットの数の上限"},{"text":"\n\nデフォルト：6体","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜2体＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 222"}}]
execute if score $mt.check mt.score matches 3 run scoreboard players set $mt.sys mt.slot 2
execute if score $mt.check mt.score matches 4 run data modify storage mobtamer:settings data.party_slots set value 3
execute if score $mt.check mt.score matches 4 run tellraw @s ["",{"text": "  "},{"text": "召喚ペット数の上限","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"一度に召喚できるペットの数の上限"},{"text":"\n\nデフォルト：6体","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜3体＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 222"}}]
execute if score $mt.check mt.score matches 4 run scoreboard players set $mt.sys mt.slot 3
execute if score $mt.check mt.score matches 5 run data modify storage mobtamer:settings data.party_slots set value 6
execute if score $mt.check mt.score matches 5 run tellraw @s ["",{"text": "  "},{"text": "召喚ペット数の上限","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"一度に召喚できるペットの数の上限"},{"text":"\n\nデフォルト：6体","color":"gray"}]}},{"text": "","color": "yellow"},{"text": " ＜6体＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 222"}}]
execute if score $mt.check mt.score matches 5 run scoreboard players set $mt.sys mt.slot 6
scoreboard players reset $mt.check mt.score
