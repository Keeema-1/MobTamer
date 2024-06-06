
data modify entity @s text set value '["",{"text":"基礎防御力","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.armor.base.before"},"color":"aqua"},{"text":"\\n\\nこのステータスは\\n最大です","color":"red"}]'
kill @e[type=interaction,tag=mt.interaction.power_up.armor,distance=..4,limit=1]
