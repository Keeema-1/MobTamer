tag @s add mt.down
tag @s remove mt.following
tag @s remove mt.stop
effect give @s invisibility infinite 1 true
data merge entity @s {Glowing:1b,NoAI:1b,Invulnerable:1b,Silent:1b}
scoreboard players set @s mt.health -120
execute summon text_display run function mobtamer:sys/player/pet/each/down/down/display

playsound minecraft:item.totem.use master @a ~ ~ ~ 1

# execute on attacker if entity @s[type=player,tag=!mt.player_check] run tellraw @a [{"selector":"@s"},{"text":"が","color":"red"},{"selector":"@e[team=!,tag=mt.pet_check,limit=1]"},{"text":"をダウンさせました。","color":"red"}]
# execute on attacker if entity @s[type=player,tag=!mt.player_check] run return 1
# execute on attacker if entity @s[tag=mt.pet,tag=!mt.player_check] run tellraw @a [{"selector":"@s"},{"text":"が","color":"red"},{"selector":"@e[team=!,tag=mt.pet_check,limit=1]"},{"text":"をダウンさせました。","color":"red"}]
# execute on attacker if entity @s[tag=mt.pet,tag=!mt.player_check] run return 1
tellraw @a[tag=mt.player_check,limit=1] [{"selector":"@s"},{"text":"がダウンしました。","color":"red"}]
