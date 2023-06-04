scoreboard players operation $mt.display mt.health = @s mt.health
scoreboard players operation $mt.display mt.max_health = @s mt.max_health
scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.display mt.health /= $mt.const mt.score
scoreboard players operation $mt.display mt.max_health /= $mt.const mt.score

title @a[tag=mt.player_check] actionbar ["",{"text":"【情報】  ","color": "green"},{"text":"Slot","color": "aqua"},{"score":{"name": "@s","objective": "mt.slot"},"color": "aqua"},{"text":"  "},{"selector":"@s"},{"text":"  ♥","color": "red"},{"score":{"name": "$mt.display","objective": "mt.health"},"color": "green"},{"text":"/"},{"score":{"name": "$mt.display","objective": "mt.max_health"}}]

scoreboard players reset $mt.display mt.health
scoreboard players reset $mt.display mt.max_health
scoreboard players reset $mt.const mt.score
