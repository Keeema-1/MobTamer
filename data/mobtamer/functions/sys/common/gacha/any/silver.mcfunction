scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 6440
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..49 run function mobtamer:command/tame/summon/vindicator
execute if score $mt.random mt.score matches 50..99 run function mobtamer:command/tame/summon/blaze
execute if score $mt.random mt.score matches 100..149 run function mobtamer:command/tame/summon/shulker
execute if score $mt.random mt.score matches 150..209 run function mobtamer:command/tame/summon/enderman
execute if score $mt.random mt.score matches 210..269 run function mobtamer:command/tame/summon/zoglin
execute if score $mt.random mt.score matches 270..329 run function mobtamer:command/tame/summon/hoglin
execute if score $mt.random mt.score matches 330..409 run function mobtamer:command/tame/summon/polar_bear
execute if score $mt.random mt.score matches 410..489 run function mobtamer:command/tame/summon/zombified_piglin
execute if score $mt.random mt.score matches 490..589 run function mobtamer:command/tame/summon/guardian
execute if score $mt.random mt.score matches 590..689 run function mobtamer:command/tame/summon/pillager
execute if score $mt.random mt.score matches 690..789 run function mobtamer:command/tame/summon/wither_skeleton
execute if score $mt.random mt.score matches 790..889 run function mobtamer:command/tame/summon/witch
execute if score $mt.random mt.score matches 890..1039 run function mobtamer:command/tame/summon/panda
execute if score $mt.random mt.score matches 1040..1189 run function mobtamer:command/tame/summon/piglin
execute if score $mt.random mt.score matches 1190..1389 run function mobtamer:command/tame/summon/endermite
execute if score $mt.random mt.score matches 1390..1589 run function mobtamer:command/tame/summon/skeleton
execute if score $mt.random mt.score matches 1590..1789 run function mobtamer:command/tame/summon/stray
execute if score $mt.random mt.score matches 1790..1989 run function mobtamer:command/tame/summon/drowned
execute if score $mt.random mt.score matches 1990..2189 run function mobtamer:command/tame/summon/husk
execute if score $mt.random mt.score matches 2190..2389 run function mobtamer:command/tame/summon/zombie
execute if score $mt.random mt.score matches 2390..2589 run function mobtamer:command/tame/summon/zombie_villager
execute if score $mt.random mt.score matches 2590..2789 run function mobtamer:command/tame/summon/vex
execute if score $mt.random mt.score matches 2790..2989 run function mobtamer:command/tame/summon/allay
execute if score $mt.random mt.score matches 2990..3189 run function mobtamer:command/tame/summon/creeper
execute if score $mt.random mt.score matches 3190..3389 run function mobtamer:command/tame/summon/phantom
execute if score $mt.random mt.score matches 3390..3589 run function mobtamer:command/tame/summon/cave_spider
execute if score $mt.random mt.score matches 3590..3789 run function mobtamer:command/tame/summon/spider
execute if score $mt.random mt.score matches 3790..3989 run function mobtamer:command/tame/summon/magma_cube
execute if score $mt.random mt.score matches 3990..4189 run function mobtamer:command/tame/summon/silverfish
execute if score $mt.random mt.score matches 4190..4439 run function mobtamer:command/tame/summon/axolotl
execute if score $mt.random mt.score matches 4440..4689 run function mobtamer:command/tame/summon/bee
execute if score $mt.random mt.score matches 4690..4939 run function mobtamer:command/tame/summon/fox
execute if score $mt.random mt.score matches 4940..5189 run function mobtamer:command/tame/summon/goat
execute if score $mt.random mt.score matches 5190..5439 run function mobtamer:command/tame/summon/trader_llama
execute if score $mt.random mt.score matches 5440..5689 run function mobtamer:command/tame/summon/wolf
execute if score $mt.random mt.score matches 5690..5939 run function mobtamer:command/tame/summon/llama
execute if score $mt.random mt.score matches 5940..6189 run function mobtamer:command/tame/summon/villager
execute if score $mt.random mt.score matches 6190..6439 run function mobtamer:command/tame/summon/wandering_trader
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
scoreboard players reset $mt.not_tamed mt.score
