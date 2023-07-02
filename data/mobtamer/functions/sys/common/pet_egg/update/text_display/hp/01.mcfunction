
data modify entity @s text set value '["",{"text":"最大HP","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.max_health.base.before"},"color":"aqua"},{"text":"\\n\\nこのステータスは\\n最大です","color":"red"}]'
kill @e[type=interaction,tag=mt.interaction.power_up.hp,distance=..4,limit=1]
