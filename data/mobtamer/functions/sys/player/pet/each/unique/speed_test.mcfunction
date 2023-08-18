
scoreboard players set $mt.tmp mt.score -1

execute store result score $mt.speed_test.after.x mt.score run data get entity @s Pos[0] 1000
execute store result score $mt.speed_test.after.z mt.score run data get entity @s Pos[2] 1000

scoreboard players operation $mt.speed_test.before.x mt.score -= $mt.speed_test.after.x mt.score
scoreboard players operation $mt.speed_test.before.z mt.score -= $mt.speed_test.after.z mt.score

execute if score $mt.speed_test.before.x mt.score matches ..-1 run scoreboard players operation $mt.speed_test.before.x mt.score *= $mt.tmp mt.score
execute if score $mt.speed_test.before.z mt.score matches ..-1 run scoreboard players operation $mt.speed_test.before.z mt.score *= $mt.tmp mt.score

execute if score $mt.speed_test.before.x mt.score > $mt.speed_test.before.z mt.score run scoreboard players operation $mt.larger mt.score = $mt.speed_test.before.x mt.score
execute if score $mt.speed_test.before.x mt.score > $mt.speed_test.before.z mt.score run scoreboard players operation $mt.smaller mt.score = $mt.speed_test.before.z mt.score
execute unless score $mt.speed_test.before.x mt.score > $mt.speed_test.before.z mt.score run scoreboard players operation $mt.larger mt.score = $mt.speed_test.before.z mt.score
execute unless score $mt.speed_test.before.x mt.score > $mt.speed_test.before.z mt.score run scoreboard players operation $mt.smaller mt.score = $mt.speed_test.before.x mt.score

# l * ( 100 + 50*(s/l) - 12*(s/l)^2 )

scoreboard players set $mt.speed mt.score 50
scoreboard players operation $mt.speed mt.score *= $mt.smaller mt.score
scoreboard players operation $mt.speed mt.score /= $mt.larger mt.score
scoreboard players set $mt.tmp mt.score 12

scoreboard players operation $mt.tmp mt.score *= $mt.smaller mt.score
scoreboard players operation $mt.tmp mt.score *= $mt.smaller mt.score
scoreboard players operation $mt.tmp mt.score /= $mt.larger mt.score
scoreboard players operation $mt.tmp mt.score /= $mt.larger mt.score

scoreboard players operation $mt.speed mt.score -= $mt.tmp mt.score
scoreboard players add $mt.speed mt.score 100

scoreboard players operation $mt.speed mt.score *= $mt.larger mt.score

scoreboard players set $mt.tmp mt.score 50
scoreboard players operation $mt.speed mt.score /= $mt.tmp mt.score

# execute if score $mt.speed mt.score matches 1.. run tellraw @a [{"score":{"objective": "mt.score","name": "$mt.smaller"}}]
execute if predicate mobtamer:random/500m if score $mt.speed mt.score matches 1.. run tellraw @a [{"score":{"objective": "mt.score","name": "$mt.speed"}}]
# execute if score $mt.speed mt.score matches 1.. if score $mt.smaller mt.score matches 0 run tellraw @a [{"score":{"objective": "mt.score","name": "$mt.speed"}}]

scoreboard players operation $mt.speed_test.before.x mt.score = $mt.speed_test.after.x mt.score
scoreboard players operation $mt.speed_test.before.z mt.score = $mt.speed_test.after.z mt.score

# zombie
#   attribute 0.23
#   normal 230
#   targeting 230

# skeleton
#   attribute 0.25
#   270

# creeper
#   attribute 0.25
#   170
#   ヤマネコから逃げる 390

# spider
#   attribute 0.3
#   250
#   targeting 380

# vindicator
#   attribute 0.35
#   190
#   500?