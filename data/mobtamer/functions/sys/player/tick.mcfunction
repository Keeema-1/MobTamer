execute unless score @s mt.login matches 1.. run function mobtamer:sys/player/login/login
scoreboard players operation $mt.player mt.id = @s mt.id
tag @s add mt.player_check
execute as @e[team=mt.common,tag=mt.pet,type=#mobtamer:can_tame] if score @s mt.id = $mt.player mt.id run tag @s add mt.player_check
data modify storage mobtamer:temp data.player.Pos set from entity @s Pos
data modify storage mobtamer:temp data.player.OnGround set from entity @s OnGround
data modify storage mobtamer:temp data.player.Inventory set from entity @s Inventory
data modify storage mobtamer:temp data.player.SelectedItem set from entity @s SelectedItem

function mobtamer:sys/player/summon/tick
function mobtamer:sys/player/pet/tick
function mobtamer:sys/player/item/tick

scoreboard players reset $mt.player
tag @s remove mt.player_check
tag @e[team=mt.common,tag=mt.player_check,tag=mt.pet,type=#mobtamer:can_tame] remove mt.player_check
data remove storage mobtamer:temp data.player
