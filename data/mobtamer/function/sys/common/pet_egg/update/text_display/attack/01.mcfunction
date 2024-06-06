
data modify entity @s text set value '["",{"text":"基礎攻撃力","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.attack.base.before"},"color":"aqua"},{"text":"\\n\\nこのステータスは\\n最大です","color":"red"}]'
kill @e[type=interaction,tag=mt.interaction.power_up.attack,distance=..4,limit=1]
