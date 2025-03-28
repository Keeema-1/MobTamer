execute on passengers if entity @s[type=text_display] run kill @s
execute on passengers if entity @s[type=area_effect_cloud] run kill @s
execute on passengers if entity @s[type=marker] run kill @s
execute on passengers run ride @s dismount
execute if entity @s[type=#mobtamer:slimes] run data modify entity @s Size set value 0
kill @s
