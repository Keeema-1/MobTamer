execute as @e[tag=mt.pet] on passengers if entity @s[type=text_display] run kill @s
execute as @e[type=#mobtamer:slimes] run data merge entity @s {Size:0}
kill @e[tag=mt.pet]