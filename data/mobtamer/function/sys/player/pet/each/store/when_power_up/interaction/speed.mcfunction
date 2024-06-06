
tag @s add mt.interaction.power_up

# ride @s mount @e[type=item,tag=mt.new,limit=1]

tag @s add mt.interaction.power_up.speed

# 紐つけは相対座標でいいや

data merge entity @s {height:0.3f,width:0.6f,response:0b,Glowing:1b}
# data merge entity @s {Size:0,Glowing:1b,NoAI:1b,NoGravity:1b}
