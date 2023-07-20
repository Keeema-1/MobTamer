tag @s add mt.me

tellraw @s [{"text":"＜青チームの参加者一覧＞","color":"blue"}]

execute as @a[team=mt.blue] run tellraw @a[tag=mt.me] [{"text":"  "},{"selector":"@s"}]
execute unless entity @a[team=mt.blue] run tellraw @s [{"text":"  なし"}]

tag @s remove mt.me
