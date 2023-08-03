
tellraw @a[tag=mt.player_check] [{"selector":"@s"},{"text":"が攻撃可能になりました。","color":"yellow"}]

execute at @s run particle minecraft:witch ~ ~0.5 ~ 0 0.5 0 0.1 10
execute at @s run playsound entity.player.levelup master @a ~ ~ ~

tag @s add mt.custom_attack
