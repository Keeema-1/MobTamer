tag @s add mt.me

tellraw @s [{"text":"＜緑チームの参加者一覧＞","color":"green"}]

execute as @a[team=mt.green] run tellraw @a[tag=mt.me] [{"text":"  "},{"selector":"@s"}]
execute unless entity @a[team=mt.green] run tellraw @s [{"text":"  なし"}]

tag @s remove mt.me
