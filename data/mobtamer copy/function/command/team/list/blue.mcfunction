tag @s add mt.me

tellraw @s [{"storage": "mobtamer:text","nbt":"data.team.list.blue","interpret": true}]

execute as @a[team=mt.blue] run tellraw @a[tag=mt.me] [{"text":"  "},{"selector":"@s"}]
execute unless entity @a[team=mt.blue] run tellraw @s [{"storage": "mobtamer:text","nbt":"data.common.nothing","interpret": true}]

tag @s remove mt.me
