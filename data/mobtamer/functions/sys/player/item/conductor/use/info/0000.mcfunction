
tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet,limit=1] add mt.check1
tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.check1,limit=1] add mt.check2
tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.check1,tag=!mt.check2,limit=1] add mt.check3
tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.check1,tag=!mt.check2,tag=!mt.check3,limit=1] add mt.check4
tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.check1,tag=!mt.check2,tag=!mt.check3,tag=!mt.check4,limit=1] add mt.check5
tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet,tag=!mt.check1,tag=!mt.check2,tag=!mt.check3,tag=!mt.check4,tag=!mt.check5,limit=1] add mt.check6

execute if entity @e[team=mt.common,tag=mt.check1,limit=1] unless entity @e[team=mt.common,tag=mt.check2,limit=1] run data modify entity @s text set value '["",{"text":"＜パーティーのペット一覧＞","color":"yellow"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check1,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check1,limit=1]"},"color":"aqua"},{"text":"）"}]'
execute if entity @e[team=mt.common,tag=mt.check2,limit=1] unless entity @e[team=mt.common,tag=mt.check3,limit=1] run data modify entity @s text set value '["",{"text":"＜パーティーのペット一覧＞","color":"yellow"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check1,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check1,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check2,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check2,limit=1]"},"color":"aqua"},{"text":"）"}]'
execute if entity @e[team=mt.common,tag=mt.check3,limit=1] unless entity @e[team=mt.common,tag=mt.check4,limit=1] run data modify entity @s text set value '["",{"text":"＜パーティーのペット一覧＞","color":"yellow"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check1,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check1,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check2,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check2,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check3,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check3,limit=1]"},"color":"aqua"},{"text":"）"}]'
execute if entity @e[team=mt.common,tag=mt.check4,limit=1] unless entity @e[team=mt.common,tag=mt.check5,limit=1] run data modify entity @s text set value '["",{"text":"＜パーティーのペット一覧＞","color":"yellow"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check1,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check1,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check2,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check2,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check3,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check3,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check4,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check4,limit=1]"},"color":"aqua"},{"text":"）"}]'
execute if entity @e[team=mt.common,tag=mt.check5,limit=1] unless entity @e[team=mt.common,tag=mt.check6,limit=1] run data modify entity @s text set value '["",{"text":"＜パーティーのペット一覧＞","color":"yellow"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check1,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check1,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check2,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check2,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check3,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check3,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check4,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check4,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check5,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check5,limit=1]"},"color":"aqua"},{"text":"）"}]'
execute if entity @e[team=mt.common,tag=mt.check6,limit=1] unless entity @e[team=mt.common,tag=mt.check7,limit=1] run data modify entity @s text set value '["",{"text":"＜パーティーのペット一覧＞","color":"yellow"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check1,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check1,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check2,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check2,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check3,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check3,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check4,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check4,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check5,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check5,limit=1]"},"color":"aqua"},{"text":"）"},{"text":"\\n"},{"selector":"@e[team=mt.common,tag=mt.check6,limit=1]"},{"text":" （コスト："},{"score":{"objective":"mt.cost","name":"@e[team=mt.common,tag=mt.check6,limit=1]"},"color":"aqua"},{"text":"）"}]'

tag @e[team=mt.common,tag=mt.check1] remove mt.check1
tag @e[team=mt.common,tag=mt.check2] remove mt.check2
tag @e[team=mt.common,tag=mt.check3] remove mt.check3
tag @e[team=mt.common,tag=mt.check4] remove mt.check4
tag @e[team=mt.common,tag=mt.check5] remove mt.check5
tag @e[team=mt.common,tag=mt.check6] remove mt.check6
