
execute store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.value
execute store result score $mt.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

execute on passengers if entity @s[tag=mt.text_display.power_up.explain] run data modify entity @s text set value '["",{"text":"<強化>","color":"aqua"},{"text":"\\n"},{"text":"所持Exp: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.xp"},"color":"aqua"},{"text":"\\n"},{"text":"コスト: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.cost"},"color":"aqua"}]'

scoreboard players reset $mt.cost mt.score
scoreboard players reset $mt.xp mt.score
