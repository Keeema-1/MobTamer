execute on target if entity @s[type=#mobtamer:xp/0] run scoreboard players set $mt.xp.add mt.score 0

execute on target unless entity @s[type=#mobtamer:xp/0] run function mobtamer:sys/player/pet/each/xp/00

scoreboard players operation @s mt.xp += $mt.xp.add mt.score

tellraw @a ["",{"selector":"@s","color": "aqua"},{"text":" killed:"}]
execute on target run tellraw @a [{"text":"  "},{"selector":"@s","color": "red"},{"text": "  (xp:","color": "yellow"},{"score":{"name": "$mt.xp.add","objective": "mt.score"},"color": "aqua"},{"text": ")","color": "yellow"}]
