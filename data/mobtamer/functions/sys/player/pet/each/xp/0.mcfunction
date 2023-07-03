execute on target if entity @s[type=#mobtamer:xp/multiplier/0] run scoreboard players set $mt.xp.add mt.score 0

execute on target unless entity @s[type=#mobtamer:xp/multiplier/0] run function mobtamer:sys/player/pet/each/xp/00

scoreboard players operation $mt.xp.remain mt.score = $mt.xp.add mt.score

scoreboard players operation $mt.xp.add.killer mt.score = $mt.xp.remain mt.score
scoreboard players add $mt.xp.add.killer mt.score 1
scoreboard players set $mt.temp mt.score 2
scoreboard players operation $mt.xp.add.killer mt.score /= $mt.temp mt.score
scoreboard players operation $mt.xp.remain mt.score -= $mt.xp.add.killer mt.score

scoreboard players operation $mt.xp.add mt.score = $mt.xp.remain mt.score
execute store result score $mt.temp mt.score if entity @e[team=mt.common,tag=mt.player_check,tag=mt.pet]
scoreboard players operation $mt.xp.add mt.score /= $mt.temp mt.score
scoreboard players operation @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.down,tag=!mt.stop,tag=!mt.pet_check] mt.xp += $mt.xp.add mt.score
execute as @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.down,tag=!mt.stop,tag=!mt.pet_check] run scoreboard players operation $mt.xp.remain mt.score -= $mt.xp.add mt.score
scoreboard players operation $mt.xp.add.killer mt.score += $mt.xp.remain mt.score
scoreboard players operation @s mt.xp += $mt.xp.add.killer mt.score

# tellraw @a ["",{"selector":"@s","color": "aqua"},{"text":" Exp +","color":"aqua"},{"score":{"name":"$mt.xp.add.killer","objective":"mt.score"},"color":"aqua"}]
# execute as @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.pet_check] run tellraw @a ["",{"selector":"@s","color": "aqua"},{"text":" Exp +","color":"aqua"},{"score":{"name":"$mt.xp.add","objective":"mt.score"},"color":"aqua"}]
# execute on target run tellraw @a [{"text":"  "},{"selector":"@s","color": "red"},{"text": "  (xp:","color": "yellow"},{"score":{"name": "$mt.xp.add","objective": "mt.score"},"color": "aqua"},{"text": ")","color": "yellow"}]
execute if data storage mobtamer:settings data{exp_display:1b} run function mobtamer:sys/player/pet/each/xp/display/0

scoreboard players reset $mt.xp.add
scoreboard players reset $mt.xp.add.killer
scoreboard players reset $mt.temp
scoreboard players reset $mt.xp.remain

advancement grant @a[tag=mt.player_check,limit=1] only mobtamer:mobtamer/first_kill
