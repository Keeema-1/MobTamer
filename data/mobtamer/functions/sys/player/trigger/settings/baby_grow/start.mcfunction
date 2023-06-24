
execute if data storage mobtamer:settings data{baby_grow:1b} run scoreboard players set $mt.check mt.score 1
execute if score $mt.check mt.score matches 1.. run tellraw @s ["",{"text": "  "},{"text": "子供ペットの成長","color": "green"},{"text": "","color": "yellow"},{"text": " ＜オン＞ ","color": "aqua"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 2"}}]
execute unless score $mt.check mt.score matches 1.. run tellraw @s ["",{"text": "  "},{"text": "子供ペットの成長","color": "green"},{"text": "","color": "yellow"},{"text": " ＜オフ＞ ","color": "gray"},{"text": "[変更]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 2"}}]

scoreboard players reset $mt.check mt.score
