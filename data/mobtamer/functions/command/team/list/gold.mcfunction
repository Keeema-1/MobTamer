tag @s add mt.me

tellraw @s [{"text":"＜橙チームの参加者一覧＞","color":"gold"}]

execute as @a[team=mt.gold] run tellraw @a[tag=mt.me] [{"text":"  "},{"selector":"@s"}]
execute unless entity @a[team=mt.gold] run tellraw @s [{"text":"  なし"}]

tag @s remove mt.me
