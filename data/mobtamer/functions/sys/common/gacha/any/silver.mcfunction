scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 6440
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..249 run function mobtamer:command/tame/summon/axolotl
execute if score $mt.random mt.score matches 250..499 run function mobtamer:command/tame/summon/bee
execute if score $mt.random mt.score matches 500..749 run function mobtamer:command/tame/summon/fox
execute if score $mt.random mt.score matches 750..999 run function mobtamer:command/tame/summon/goat
execute if score $mt.random mt.score matches 1000..1249 run function mobtamer:command/tame/summon/llama
execute if score $mt.random mt.score matches 1250..1499 run function mobtamer:command/tame/summon/trader_llama
execute if score $mt.random mt.score matches 1500..1749 run function mobtamer:command/tame/summon/villager
execute if score $mt.random mt.score matches 1750..1999 run function mobtamer:command/tame/summon/wandering_trader
execute if score $mt.random mt.score matches 2000..2249 run function mobtamer:command/tame/summon/wolf
execute if score $mt.random mt.score matches 2250..2449 run function mobtamer:command/tame/summon/allay
execute if score $mt.random mt.score matches 2450..2649 run function mobtamer:command/tame/summon/cave_spider
execute if score $mt.random mt.score matches 2650..2849 run function mobtamer:command/tame/summon/creeper
execute if score $mt.random mt.score matches 2850..3049 run function mobtamer:command/tame/summon/drowned
execute if score $mt.random mt.score matches 3050..3249 run function mobtamer:command/tame/summon/endermite
execute if score $mt.random mt.score matches 3250..3449 run function mobtamer:command/tame/summon/husk
execute if score $mt.random mt.score matches 3450..3649 run function mobtamer:command/tame/summon/magma_cube
execute if score $mt.random mt.score matches 3650..3849 run function mobtamer:command/tame/summon/phantom
execute if score $mt.random mt.score matches 3850..4049 run function mobtamer:command/tame/summon/silverfish
execute if score $mt.random mt.score matches 4050..4249 run function mobtamer:command/tame/summon/skeleton
execute if score $mt.random mt.score matches 4250..4449 run function mobtamer:command/tame/summon/spider
execute if score $mt.random mt.score matches 4450..4649 run function mobtamer:command/tame/summon/stray
execute if score $mt.random mt.score matches 4650..4849 run function mobtamer:command/tame/summon/vex
execute if score $mt.random mt.score matches 4850..5049 run function mobtamer:command/tame/summon/zombie
execute if score $mt.random mt.score matches 5050..5249 run function mobtamer:command/tame/summon/zombie_villager
execute if score $mt.random mt.score matches 5250..5399 run function mobtamer:command/tame/summon/panda
execute if score $mt.random mt.score matches 5400..5549 run function mobtamer:command/tame/summon/piglin
execute if score $mt.random mt.score matches 5550..5649 run function mobtamer:command/tame/summon/guardian
execute if score $mt.random mt.score matches 5650..5749 run function mobtamer:command/tame/summon/pillager
execute if score $mt.random mt.score matches 5750..5849 run function mobtamer:command/tame/summon/witch
execute if score $mt.random mt.score matches 5850..5949 run function mobtamer:command/tame/summon/wither_skeleton
execute if score $mt.random mt.score matches 5950..6029 run function mobtamer:command/tame/summon/polar_bear
execute if score $mt.random mt.score matches 6030..6109 run function mobtamer:command/tame/summon/zombified_piglin
execute if score $mt.random mt.score matches 6110..6169 run function mobtamer:command/tame/summon/enderman
execute if score $mt.random mt.score matches 6170..6229 run function mobtamer:command/tame/summon/hoglin
execute if score $mt.random mt.score matches 6230..6289 run function mobtamer:command/tame/summon/zoglin
execute if score $mt.random mt.score matches 6290..6339 run function mobtamer:command/tame/summon/blaze
execute if score $mt.random mt.score matches 6340..6389 run function mobtamer:command/tame/summon/shulker
execute if score $mt.random mt.score matches 6390..6439 run function mobtamer:command/tame/summon/vindicator
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
scoreboard players reset $mt.not_tamed mt.score
