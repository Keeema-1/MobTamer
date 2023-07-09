
execute unless score $mt.conductor.mode2 mt.score matches 1 if entity @s[tag=!mt.selected] as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,predicate=!mobtamer:vehicle/any] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：騎乗】 ","color": "dark_red"},{"text":"上に乗るモブ: "},{"selector":"@s"},{"text":" （アクションで決定）"}]
execute unless score $mt.conductor.mode2 mt.score matches 1 if entity @s[tag=mt.selected] as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,predicate=!mobtamer:vehicle/any] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：騎乗】 ","color": "dark_red"},{"text":"上に乗るプレイヤー: "},{"selector":"@s"},{"text":" （アクションで決定）"}]
execute unless score $mt.conductor.mode2 mt.score matches 1 as @e[team=mt.common,tag=mt.selected,tag=mt.player_check,predicate=mobtamer:vehicle/any] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：騎乗】 ","color": "dark_red"},{"text":"騎乗をやめる: "},{"selector":"@s"},{"text":" （アクションで決定）"}]
execute unless score $mt.conductor.mode2 mt.score matches 1 unless entity @e[team=mt.common,tag=mt.selected,tag=mt.player_check] run title @a[tag=mt.player_check] actionbar ["",{"text":"【モード：騎乗】  ","color": "dark_red"},{"text":"騎乗するモブを選択","color": "white"}]

execute if score $mt.conductor.mode2 mt.score matches 1 run function mobtamer:sys/player/item/conductor/title/ride/000
