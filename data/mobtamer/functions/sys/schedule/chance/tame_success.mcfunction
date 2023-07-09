scoreboard players set @s mt.score 40
tag @s add mt.success
team join mt.common @s
data merge entity @s {Invulnerable:1b,NoAI:1b,NoGravity:1b,Glowing:1b}
tellraw @a[distance=..16] [{"selector":"@s"},{"text":" のテイムに成功しました！"}]
particle minecraft:totem_of_undying ~ ~2 ~ 0.2 0.2 0.2 0.5 30
playsound entity.player.levelup master @a ~ ~ ~ 1 1
