tag @s remove mt.logout

execute if entity @s[tag=!mt.down,tag=!mt.stop] run data merge entity @s {NoAI:0b}
execute if entity @s[tag=!mt.down] run data merge entity @s {Invulnerable:0b}
data merge entity @s {Silent:0b}

execute on passengers if entity @s[tag=mt.logout_display] run kill @s
