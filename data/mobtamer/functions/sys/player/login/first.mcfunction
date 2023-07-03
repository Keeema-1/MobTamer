scoreboard players operation @s mt.id = $mt.sys mt.id
scoreboard players add $mt.sys mt.id 1
# tellraw @s "first login"
give @s golden_apple
function mobtamer:command/give/conductor

scoreboard players set @s mt.cost 100

tellraw @s ["",{"text":"=====================================================","color": "green"}]
tellraw @s ["",{"text":"モブテイマーの世界へようこそ！","color": "green","italic": true}]
tellraw @s ["",{"text":"この世界では、","color": "green","italic": true},{"translate":"item.minecraft.golden_apple","color": "aqua","italic":true},{"text":"を使って一部のモブをテイムすることができます。","color": "green","italic": true}]
tellraw @s ["",{"text":"テイムしたモブはあなたのペットとなり、連れて歩いたり、共に戦わせることができるようになります。","color": "green","italic": true}]
tellraw @s ["",{"text":"わからないことがあれば、モブテイマーの指南書があなたを導いてくれるでしょう。","color": "green","italic": true}]
tellraw @s ["",{"text":"=====================================================","color": "green"}]

function mobtamer:command/give/manual
function mobtamer:command/give/settings