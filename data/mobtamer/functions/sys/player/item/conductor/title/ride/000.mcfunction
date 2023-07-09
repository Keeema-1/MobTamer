
execute store result score $mt.controller mt.slot run data get storage mobtamer:temp data.item_tag.mt_state.slot
execute as @e[team=mt.common,tag=mt.player_check,tag=mt.pet] if score @s mt.slot = $mt.controller mt.slot run tag @s add mt.check

execute unless score $mt.controller mt.slot matches ..-1 as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：騎乗】 ","color": "dark_red"},{"text":"（上）"},{"text":" "},{"selector":"@e[team=mt.common,tag=mt.check,limit=1]"},{"text":" → （下）"},{"selector":"@s"},{"text":" （アクションで決定）"}]
execute unless score $mt.controller mt.slot matches ..-1 unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：騎乗】  ","color": "dark_red"},{"text":"（上）"},{"text":" "},{"selector":"@e[team=mt.common,tag=mt.check,limit=1]"},{"text":" → "},{"text":"下のモブを選択","color": "white"}]
execute if score $mt.controller mt.slot matches ..-1 as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：騎乗】 ","color": "dark_red"},{"text":"（上）"},{"text":" "},{"selector":"@a[tag=mt.player_check,limit=1]"},{"text":" → （下）"},{"selector":"@s"},{"text":" （アクションで決定）"}]
execute if score $mt.controller mt.slot matches ..-1 unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check,tag=mt.pet] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：騎乗】  ","color": "dark_red"},{"text":"（上）"},{"text":" "},{"selector":"@s"},{"text":" → "},{"text":"下のモブを選択","color": "white"}]

tag @e[team=mt.common,tag=mt.check] remove mt.check
scoreboard players reset $mt.controller mt.slot