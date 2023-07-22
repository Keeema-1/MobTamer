data modify storage mobtamer:temp data.pet.Pos set from entity @s Pos
data modify storage mobtamer:temp data.pet.Motion set from entity @s Motion
data modify storage mobtamer:temp data.pet.OnGround set from entity @s OnGround
data modify storage mobtamer:temp data.pet.Health set from entity @s Health
data modify storage mobtamer:temp data.pet.UUID set from entity @s UUID
data modify storage mobtamer:temp data.pet.ArmorItems set from entity @s ArmorItems
data modify storage mobtamer:temp data.pet.HandItems set from entity @s HandItems
tag @s add mt.pet_check
execute if entity @s[tag=mt.logout] run function mobtamer:sys/player/pet/each/login
execute if entity @s[tag=!mt.down] run function mobtamer:sys/player/pet/each/alive
execute if entity @s[tag=mt.down] run function mobtamer:sys/player/pet/each/down/is_down/0
execute if score @s mt.summon_check_time matches 1.. run function mobtamer:sys/player/pet/each/after_summon
function mobtamer:sys/player/pet/each/unique/0
execute unless data storage mobtamer:settings data{forceload_pet_chunk:1b} unless entity @a[tag=mt.player_check,distance=..72] at @a[tag=mt.player_check] run function mobtamer:sys/player/pet/each/store/tellraw
execute if data storage mobtamer:settings data{forceload_pet_chunk:1b} at @s unless entity @a[tag=mt.player_check,distance=..72] run forceload add ~ ~
data remove storage mobtamer:temp data.pet

execute on target if predicate mobtamer:die on attacker if entity @s[tag=mt.pet_check] run function mobtamer:sys/player/pet/each/xp/0

tag @s remove mt.pet_check
