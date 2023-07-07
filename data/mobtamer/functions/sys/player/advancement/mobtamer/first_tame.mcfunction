function mobtamer:command/give/conductor

scoreboard players operation $mt.cost.before mt.score = @s mt.cost
scoreboard players add @s mt.cost 20
tellraw @s [{"text":"パーティーのコスト上限が増加しました。 （","color": "aqua"},{"score":{"name": "$mt.cost.before","objective": "mt.score"}},{"text":"→","color": "aqua"},{"score":{"name": "@s","objective": "mt.cost"}},{"text":"）","color": "aqua"}]
scoreboard players reset $mt.cost.before mt.score

tellraw @s ["",{"text":"進捗達成の報酬としてコンダクターを入手しました。","color": "yellow"}]

tellraw @s ["",{"text":"=====================================================","color": "green"}]
tellraw @s ["",{"text":"＜コンダクターについて＞","color": "green","italic": true,"underlined": true}]
tellraw @s ["",{"text":"コンダクターというアイテムを使用することで、モブにさまざまなアクションを行うことができます。（例えば、ペットをアイテム化したり、モブに騎乗することなどが可能です。）","color": "green","italic": true}]
tellraw @s ["",{"text":"コンダクターはテイマー商人と呼ばれる特別な行商人から買うことができます。テイマー商人に会うためのアイテムは、通常の行商人との交易で入手することができます。","color": "green","italic": true}]
tellraw @s ["",{"text":"=====================================================","color": "green"}]
