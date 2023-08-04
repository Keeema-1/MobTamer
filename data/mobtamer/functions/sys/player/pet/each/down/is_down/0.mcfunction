
execute if entity @s[type=!ghast] as @a[tag=mt.player_check,predicate=mobtamer:is_sneaking,distance=..4] at @s as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=mt.down,sort=nearest,limit=1,distance=..4] if entity @s[tag=mt.pet_check] run scoreboard players add @s mt.health 2
execute if entity @s[type=ghast] as @a[tag=mt.player_check,predicate=mobtamer:is_sneaking,distance=..8] at @s as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=mt.down,sort=nearest,limit=1,distance=..8] if entity @s[tag=mt.pet_check] run scoreboard players add @s mt.health 2

execute if score @s mt.health matches -119.. run scoreboard players remove @s mt.health 1

scoreboard players operation $mt.display mt.health = @s mt.health
execute on passengers if entity @s[type=text_display] run function mobtamer:sys/player/pet/each/down/is_down/display
scoreboard players reset $mt.display mt.health

execute if score @s mt.health matches 1.. run function mobtamer:sys/player/pet/each/down/is_down/revive
