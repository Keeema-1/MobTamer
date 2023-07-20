
execute store result score $mt.damage mt.max_health run attribute @s generic.max_health get 100
execute store result score $mt.damage mt.health run data get storage mobtamer:temp data.pet.Health 100
scoreboard players operation $mt.damage mt.health -= $mt.damage mt.max_health

scoreboard players operation @s mt.health += $mt.damage mt.health

#execute store result entity @s Health float 1 run attribute @s generic.max_health base get
execute unless score $mt.damage mt.health matches 0 if entity @s[type=#mobtamer:undead] run effect give @s instant_damage 1 100 true
execute unless score $mt.damage mt.health matches 0 if entity @s[type=!#mobtamer:undead] run effect give @s instant_health 1 100 true

execute unless predicate mobtamer:targeting if score @s mt.health < @s mt.max_health run scoreboard players add @s mt.health 1
execute if score @s mt.health > @s mt.max_health run scoreboard players operation @s mt.health = @s mt.max_health

execute unless score @s mt.health matches 1.. run function mobtamer:sys/player/pet/each/down/down/0

scoreboard players reset $mt.damage mt.max_health
scoreboard players reset $mt.damage mt.health
