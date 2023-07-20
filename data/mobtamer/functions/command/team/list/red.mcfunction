tag @s add mt.me

tellraw @s [{"text":"＜赤チームの参加者一覧＞","color":"red"}]

execute as @a[team=mt.red] run tellraw @a[tag=mt.me] [{"text":"  "},{"selector":"@s"}]
execute unless entity @a[team=mt.red] run tellraw @s [{"text":"  なし"}]

tag @s remove mt.me
