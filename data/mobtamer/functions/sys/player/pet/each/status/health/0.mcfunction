execute store result score $mt.damage mt.max_health run attribute @s generic.max_health base get 100
execute store result score $mt.damage mt.health run data get storage mobtamer:temp data.pet.Health 100
scoreboard players operation $mt.damage mt.health -= $mt.damage mt.max_health

scoreboard players operation @s mt.health += $mt.damage mt.health

#execute store result entity @s Health float 1 run attribute @s generic.max_health base get
execute if entity @s[type=#mobtamer:undead] run effect give @s instant_damage 1 100 true
execute if entity @s[type=!#mobtamer:undead] run effect give @s instant_health 1 100 true

execute unless predicate mobtamer:targeting if score @s mt.health < @s mt.max_health run scoreboard players add @s mt.health 1

scoreboard players operation $mt.display mt.health = @s mt.health
scoreboard players operation $mt.display mt.max_health = @s mt.max_health
scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.display mt.health /= $mt.const mt.score
scoreboard players operation $mt.display mt.max_health /= $mt.const mt.score

execute unless score @s mt.health matches 1.. run function mobtamer:sys/player/pet/each/down/down/0
execute if score @s mt.health < @s mt.max_health unless predicate mobtamer:passenger_is_text_display summon text_display run function mobtamer:sys/player/pet/each/status/health/summon_display
execute if score @s mt.health < @s mt.max_health on passengers if entity @s[type=text_display] run function mobtamer:sys/player/pet/each/status/health/display
execute if score @s mt.health >= @s mt.max_health if predicate mobtamer:passenger_is_text_display on passengers if entity @s[type=text_display] run kill @s

scoreboard players reset $mt.damage mt.max_health
scoreboard players reset $mt.damage mt.health

scoreboard players reset $mt.display mt.health
scoreboard players reset $mt.display mt.max_health
scoreboard players reset $mt.const mt.score
