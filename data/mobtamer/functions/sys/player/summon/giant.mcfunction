
data modify storage mobtamer:temp data.temp.CustomName set from entity @s CustomName
data modify storage mobtamer:temp data.temp.CustomNameVisible set from entity @s CustomNameVisible
data modify storage mobtamer:temp data.temp.ArmorItems set from entity @s ArmorItems
data modify storage mobtamer:temp data.temp.HandItems set from entity @s HandItems
data modify storage mobtamer:temp data.temp.LeftHanded set from entity @s LeftHanded
data modify storage mobtamer:temp data.temp.ArmorDropChances set from entity @s ArmorDropChances
data modify storage mobtamer:temp data.temp.HandDropChances set from entity @s HandDropChances
data modify storage mobtamer:temp data.temp.Attributes set from entity @s Attributes
data modify storage mobtamer:temp data.temp.ActiveEffects set from entity @s ActiveEffects
data modify storage mobtamer:temp data.temp.PortalCooldown set from entity @s PortalCooldown
data modify storage mobtamer:temp data.temp.Health set from entity @s Health
data modify storage mobtamer:temp data.temp.Tags set from entity @s Tags

summon giant ~ ~ ~ {Tags:["mt.new"]}

execute as @e[type=giant,tag=mt.new,limit=1] run function mobtamer:sys/player/summon/giant_sub

tag @e[type=giant,tag=mt.new,limit=1] remove mt.new

data remove storage mobtamer:temp data.temp

tp ~ -100 ~
kill @s
