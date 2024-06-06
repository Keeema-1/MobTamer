
data modify entity @s Owner set from entity @a[tag=mt.player_check,limit=1] UUID

tag @s remove mt.new

execute on passengers run function mobtamer:sys/player/item/conductor/use/info/0100
