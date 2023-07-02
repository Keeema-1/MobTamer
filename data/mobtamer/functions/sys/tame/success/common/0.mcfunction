# tellraw @a [{"selector":"@s"},{"text":" のテイムに成功しました！"}]

advancement grant @a[distance=..8] only mobtamer:mobtamer/first_tame

data merge entity @s {Tags:["mt.pet"],AbsorptionAmount:0f,PersistenceRequired:1b,CustomNameVisible:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],IsImmuneToZombification:1b}

# particle minecraft:totem_of_undying ~ ~2 ~ 0.2 0.2 0.2 0.5 30
# playsound entity.player.levelup master @a ~ ~ ~ 1 1

function mobtamer:sys/common/pet/status_variant/give/0

execute store result score @s mt.max_health run attribute @s generic.max_health base get 100
scoreboard players set $mt.health mt.score 10000
scoreboard players operation $mt.health mt.score += @s mt.max_health
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 0.01 run scoreboard players get $mt.health mt.score
execute store result score $mt.max_health.add mt.score run attribute @s generic.max_health modifier value get 0-0-0-0-aea 100
execute store result entity @s Health double 0.01 run scoreboard players get $mt.health mt.score
scoreboard players operation @s mt.max_health += $mt.max_health.add mt.score
scoreboard players operation @s mt.health = @s mt.max_health
scoreboard players reset $mt.health mt.score
scoreboard players reset $mt.max_health.add mt.score

execute if entity @s[type=#mobtamer:burn_in_the_sun] run function mobtamer:sys/tame/success/common/helmet

data modify entity @s ArmorItems[0].tag.Unbreakable set value 1b
data modify entity @s ArmorItems[1].tag.Unbreakable set value 1b
data modify entity @s ArmorItems[2].tag.Unbreakable set value 1b
data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b
data modify entity @s HandItems[0].tag.Unbreakable set value 1b
data modify entity @s HandItems[1].tag.Unbreakable set value 1b

function mobtamer:sys/player/pet/each/store/0
