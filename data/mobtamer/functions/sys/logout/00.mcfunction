execute on passengers if entity @s[tag=mt.logout_display] run scoreboard players set $mt.logout.return mt.score 1
scoreboard players operation $mt.pet.id mt.score = @s mt.id
execute as @a if score @s mt.id = $mt.pet.id mt.score run scoreboard players set $mt.logout.return mt.score 1

execute unless score $mt.logout.return mt.score matches 1 run function mobtamer:sys/logout/000

scoreboard players reset $mt.logout.return mt.score