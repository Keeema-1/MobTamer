execute unless score @s mt.login matches 1.. run function mobtamer:sys/player/login/login

function mobtamer:sys/player/player_check_add

data modify storage mobtamer:temp data.player.Pos set from entity @s Pos
data modify storage mobtamer:temp data.player.Motion set from entity @s Motion
data modify storage mobtamer:temp data.player.Rotation set from entity @s Rotation
data modify storage mobtamer:temp data.player.OnGround set from entity @s OnGround
data modify storage mobtamer:temp data.player.Inventory set from entity @s Inventory
data modify storage mobtamer:temp data.player.SelectedItem set from entity @s SelectedItem

function mobtamer:sys/player/summon/tick
function mobtamer:sys/player/pet/tick
function mobtamer:sys/player/item/tick
function mobtamer:sys/player/weakness/tick
function mobtamer:sys/player/death/tick
execute if predicate mobtamer:random/100m unless data storage mobtamer:settings data{store_when_sleep:"never"} if predicate mobtamer:can_sleep if entity @e[team=!,type=#mobtamer:monster,tag=mt.player_check,tag=mt.pet,limit=1] run function mobtamer:sys/player/bed/0
# sneak終了チェックのためitemより後
function mobtamer:sys/player/state/tick
execute if score @s mt.trigger matches 1.. run function mobtamer:sys/player/trigger/0
execute if score @s mt.trigger matches ..-1 run function mobtamer:sys/player/trigger/0

function mobtamer:sys/player/player_check_remove

data remove storage mobtamer:temp data.player
