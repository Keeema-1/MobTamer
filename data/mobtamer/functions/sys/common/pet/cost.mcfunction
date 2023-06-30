scoreboard players operation $mt.cost mt.score = $mt.cost.attack mt.score

execute if score $mt.cost.attack.force mt.score matches -2147483648..2147483647 run scoreboard players operation $mt.cost mt.score = $mt.cost.attack.force mt.score

scoreboard players operation $mt.cost mt.score += $mt.cost.attack.add mt.score

scoreboard players operation $mt.cost mt.score *= $mt.cost.max_health mt.score
scoreboard players operation $mt.cost.tmp mt.score = $mt.cost.armor mt.score
scoreboard players add $mt.cost.tmp mt.score 20
scoreboard players operation $mt.cost mt.score *= $mt.cost.tmp mt.score
scoreboard players set $mt.cost.tmp mt.score 100
scoreboard players operation $mt.cost mt.score /= $mt.cost.tmp mt.score
execute unless score $mt.cost mt.score matches 1.. run scoreboard players set $mt.cost mt.score 1

execute if score $mt.cost.force mt.score matches -2147483648..2147483647 run scoreboard players operation $mt.cost mt.score = $mt.cost.force mt.score

scoreboard players reset $mt.cost.tmp mt.score
