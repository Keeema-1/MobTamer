
data modify storage mobtamer:temp data.selected_strategy set value '{"text":""}'
execute if score @a[tag=mt.player_check,limit=1] mt.strategy = $mt.strategy.attack mt.score run data modify storage mobtamer:temp data.selected_strategy set value '[{"text":" → "},{"text":"[攻撃優先]","color":"red"}]'
execute if score @a[tag=mt.player_check,limit=1] mt.strategy = $mt.strategy.balance mt.score run data modify storage mobtamer:temp data.selected_strategy set value '[{"text":" → "},{"text":"[バランス]","color":"aqua"}]'
execute if score @a[tag=mt.player_check,limit=1] mt.strategy = $mt.strategy.recover mt.score run data modify storage mobtamer:temp data.selected_strategy set value '[{"text":" → "},{"text":"[回復優先]","color":"green"}]'
execute if score @a[tag=mt.player_check,limit=1] mt.strategy = $mt.strategy.follow mt.score run data modify storage mobtamer:temp data.selected_strategy set value '[{"text":" → "},{"text":"[追従優先]","color":"yellow"}]'

# execute if score $mt.strategy mt.score = @a[tag=mt.player_check,limit=1] mt.strategy
