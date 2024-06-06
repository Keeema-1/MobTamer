scoreboard players remove @s mt.score 1

# execute if score @s mt.score matches 36.. run tp @s ~ ~0.3 ~ facing entity @p
# execute if score @s mt.score matches 31..35 run tp @s ~ ~0.03 ~ facing entity @p
# execute if score @s mt.score matches 26..30 run tp @s ~ ~-0.03 ~ facing entity @p
# execute if score @s mt.score matches 21..25 run tp @s ~ ~-0.1 ~ facing entity @p
# execute if score @s mt.score matches 16..20 run tp @s ~ ~-0.03 ~ facing entity @p
# execute if score @s mt.score matches 11..15 run tp @s ~ ~0.03 ~ facing entity @p
# execute if score @s mt.score matches 6..10 run tp @s ~ ~0.1 ~ facing entity @p
# execute if score @s mt.score matches 1..5 run tp @s ~ ~0.03 ~ facing entity @p

execute if score @s mt.score matches 36..40 run tp @s ~ ~0.3 ~ facing entity @p
execute if score @s mt.score matches 33..35 run tp @s ~ ~0.03 ~ facing entity @p
execute if score @s mt.score matches 30..32 run tp @s ~ ~-0.03 ~ facing entity @p
execute if score @s mt.score matches 25..29 run tp @s ~ ~-0.1 ~ facing entity @p
execute if score @s mt.score matches 22..24 run tp @s ~ ~-0.03 ~ facing entity @p
execute if score @s mt.score matches 19..21 run tp @s ~ ~0.03 ~ facing entity @p
execute if score @s mt.score matches 14..18 run tp @s ~ ~0.1 ~ facing entity @p
# execute if score @s mt.score matches 1..5 run tp @s ~ ~0.03 ~ facing entity @p

# execute anchored eyes rotated ~ 0 positioned ^ ^0.5 ^ unless block ~ ~ ~ #mobtamer:space at @s run tp @s ~ ~-0.05 ~

# execute if score @s mt.score matches 36.. run data modify entity @s Motion set value [0.0d,0.003d,0.0d]
# execute if score @s mt.score matches 31..35 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
# execute if score @s mt.score matches 26..30 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
# execute if score @s mt.score matches 21..25 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
# execute if score @s mt.score matches 16..20 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
# execute if score @s mt.score matches 11..15 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
# execute if score @s mt.score matches 6..10 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
# execute if score @s mt.score matches 1..5 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]

execute unless score @s mt.score matches 15.. run function mobtamer:sys/schedule/chance/tame
