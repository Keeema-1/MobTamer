tellraw @a [{"selector":"@s"},{"text":" のテイムに成功しました！"}]

# scoreboard players operation @s mt.id = $mt.player mt.id
data merge entity @s {Tags:["mt.pet"],AbsorptionAmount:0f,PersistenceRequired:1b,CustomNameVisible:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],IsImmuneToZombification:1b}

#particle minecraft:heart ~ ~0.5 ~ 0.5 0.5 0.5 0.002 10
particle minecraft:totem_of_undying ~ ~2 ~ 0.2 0.2 0.2 0.5 30
playsound entity.player.levelup master @a ~ ~ ~ 1 1

execute store result score @s mt.max_health run attribute @s generic.max_health base get 100
scoreboard players operation @s mt.health = @s mt.max_health
scoreboard players set $mt.health mt.score 10000
scoreboard players operation $mt.health mt.score += @s mt.max_health
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 0.01 run scoreboard players get $mt.health mt.score
execute store result entity @s Health double 0.01 run scoreboard players get $mt.health mt.score
scoreboard players reset $mt.health mt.score

execute if entity @s[type=#mobtamer:burn_in_the_sun] run function mobtamer:sys/tame/success/common/helmet

function mobtamer:sys/player/pet/each/store/0
