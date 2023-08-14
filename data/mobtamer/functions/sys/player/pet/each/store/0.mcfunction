execute if entity @e[tag=mt.new] run tellraw @a "exist new tag entity"

function mobtamer:sys/player/pet/each/store/src
summon item ~ ~ ~ {Item:{id:"zombie_spawn_egg",Count:1b},Tags:["mt.new"]}
execute as @e[type=item,tag=mt.new,distance=..3,sort=nearest,limit=1] at @s run function mobtamer:sys/player/pet/each/store/dst
data merge entity @s {Silent:1b,DeathLootTable:"empty"}
execute on passengers if entity @s[type=text_display] run kill @s
execute on passengers if entity @s[type=area_effect_cloud] run kill @s
execute on passengers if entity @s[type=marker] run kill @s
execute on passengers run ride @s dismount
tp ~ -128 ~
execute if entity @s[type=#mobtamer:slimes] run data modify entity @s Size set value 0
tag @e[type=item,tag=mt.new] remove mt.new
kill @s
data remove storage mobtamer:temp data.Item
data remove storage mobtamer:temp data.pet_status

particle poof ~ ~ ~ 0.3 0.6 0.3 0.1 20

playsound entity.item.pickup master @a ~ ~ ~ 1 1
playsound entity.item.pickup master @a ~ ~ ~ 1 1
playsound entity.item.pickup master @a ~ ~ ~ 1 1
playsound entity.item.pickup master @a ~ ~ ~ 1 1
