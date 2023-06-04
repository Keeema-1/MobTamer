#title @a actionbar "pet:tick"
data modify storage mobtamer:temp data.pet.Pos set from entity @s Pos
data modify storage mobtamer:temp data.pet.Motion set from entity @s Motion
data modify storage mobtamer:temp data.pet.OnGround set from entity @s OnGround
data modify storage mobtamer:temp data.pet.Health set from entity @s Health
#tag @s add mt.player_check
tag @s add mt.pet_check
execute if entity @s[tag=!mt.down] run function mobtamer:sys/player/pet/each/alive
execute if entity @s[tag=mt.down] run function mobtamer:sys/player/pet/each/down/is_down/0
function mobtamer:sys/player/pet/each/unique
execute unless data storage mobtamer:settings data{forceload_pet_chunk:1b} unless entity @a[tag=mt.player_check,distance=..72] at @a[tag=mt.player_check] run function mobtamer:sys/player/pet/each/store/tellraw
execute if data storage mobtamer:settings data{forceload_pet_chunk:1b} at @s unless entity @a[tag=mt.player_check,distance=..72] run forceload add ~ ~
data remove storage mobtamer:temp data.pet
#tag @s remove mt.player_check
tag @s remove mt.pet_check
