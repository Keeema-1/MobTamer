
data modify storage mobtamer:temp data.pet.Pos set from entity @s Pos

execute at @a[tag=mt.player_check,limit=1] run function mobtamer:sys/common/pet/tp/00

execute if entity @s[type=ender_dragon] at @s run tp ~ ~7 ~
execute if entity @s[type=phantom] at @s run tp ~ ~4 ~
execute if entity @s[type=ghast] at @s run tp ~ ~6 ~
execute if entity @s[type=#mobtamer:hitbox/wide] if entity @s[type=!#mobtamer:hitbox/tall] at @s run function mobtamer:sys/common/pet/tp/wide
execute if entity @s[type=!#mobtamer:hitbox/wide] if entity @s[type=#mobtamer:hitbox/tall] at @s run function mobtamer:sys/common/pet/tp/tall
execute if entity @s[type=#mobtamer:hitbox/wide] if entity @s[type=#mobtamer:hitbox/tall] at @s run function mobtamer:sys/common/pet/tp/wide_tall

execute if entity @a[tag=mt.player_check,tag=mt.flying,limit=1] run function mobtamer:sys/common/pet/tp/flying
execute if entity @s[type=#mobtamer:can_swim] at @a[tag=mt.player_check,limit=1] if block ~ ~ ~ water if block ~ ~1 ~ water run function mobtamer:sys/common/pet/tp/swiming
