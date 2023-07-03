
data modify entity @s text set value '["",{"text":"Exp +","color": "green","italic":true},{"score":{"name": "$mt.xp.add","objective": "mt.score"},"color": "green","italic":true}]'

data modify storage mobtamer:temp data.CustomName set from entity @s text

kill @s
