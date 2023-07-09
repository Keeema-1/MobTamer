scoreboard players set $mt.const mt.score 100

scoreboard players operation $mt.ver.now.main.1 mt.score = $mt.ver.now.main mt.score
scoreboard players operation $mt.ver.now.main.1 mt.score /= $mt.const mt.score
scoreboard players operation $mt.ver.now.main.2 mt.score = $mt.ver.now.main.1 mt.score
scoreboard players operation $mt.ver.now.main.2 mt.score %= $mt.const mt.score
scoreboard players operation $mt.ver.now.main.1 mt.score /= $mt.const mt.score
scoreboard players operation $mt.ver.now.main.3 mt.score = $mt.ver.now.main mt.score
scoreboard players operation $mt.ver.now.main.3 mt.score %= $mt.const mt.score

execute if score $mt.ver.now.beta mt.score matches 1.. run tellraw @a [{"text": "*データパックのバージョンが変更されました。","color": "green"},{"text": "  Ver ","color": "yellow"},{"score":{"name": "$mt.ver.now.main.1","objective": "mt.score"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$mt.ver.now.main.2","objective": "mt.score"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$mt.ver.now.main.3","objective": "mt.score"},"color": "yellow"},{"text": " Beta","color": "yellow"},{"score":{"name": "$mt.ver.now.beta","objective": "mt.score"},"color": "yellow"}]
execute unless score $mt.ver.now.beta mt.score matches 1.. run tellraw @a [{"text": "*データパックのバージョンが変更されました。","color": "green"},{"text": "  Ver ","color": "yellow"},{"score":{"name": "$mt.ver.now.main.1","objective": "mt.score"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$mt.ver.now.main.2","objective": "mt.score"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$mt.ver.now.main.3","objective": "mt.score"},"color": "yellow"}]

scoreboard players reset $mt.ver.now.main.1 mt.score
scoreboard players reset $mt.ver.now.main.2 mt.score
scoreboard players reset $mt.ver.now.main.3 mt.score
scoreboard players reset $mt.const mt.score
