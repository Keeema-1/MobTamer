scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 6440
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..49 run function mobtamer:sys/common/gacha/only_already_tamed/each/vindicator
execute if score $mt.random mt.score matches 50..99 run function mobtamer:sys/common/gacha/only_already_tamed/each/blaze
execute if score $mt.random mt.score matches 100..149 run function mobtamer:sys/common/gacha/only_already_tamed/each/shulker
execute if score $mt.random mt.score matches 150..209 run function mobtamer:sys/common/gacha/only_already_tamed/each/enderman
execute if score $mt.random mt.score matches 210..269 run function mobtamer:sys/common/gacha/only_already_tamed/each/zoglin
execute if score $mt.random mt.score matches 270..329 run function mobtamer:sys/common/gacha/only_already_tamed/each/hoglin
execute if score $mt.random mt.score matches 330..409 run function mobtamer:sys/common/gacha/only_already_tamed/each/polar_bear
execute if score $mt.random mt.score matches 410..489 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombified_piglin
execute if score $mt.random mt.score matches 490..589 run function mobtamer:sys/common/gacha/only_already_tamed/each/guardian
execute if score $mt.random mt.score matches 590..689 run function mobtamer:sys/common/gacha/only_already_tamed/each/pillager
execute if score $mt.random mt.score matches 690..789 run function mobtamer:sys/common/gacha/only_already_tamed/each/wither_skeleton
execute if score $mt.random mt.score matches 790..889 run function mobtamer:sys/common/gacha/only_already_tamed/each/witch
execute if score $mt.random mt.score matches 890..1039 run function mobtamer:sys/common/gacha/only_already_tamed/each/panda
execute if score $mt.random mt.score matches 1040..1189 run function mobtamer:sys/common/gacha/only_already_tamed/each/piglin
execute if score $mt.random mt.score matches 1190..1389 run function mobtamer:sys/common/gacha/only_already_tamed/each/endermite
execute if score $mt.random mt.score matches 1390..1589 run function mobtamer:sys/common/gacha/only_already_tamed/each/skeleton
execute if score $mt.random mt.score matches 1590..1789 run function mobtamer:sys/common/gacha/only_already_tamed/each/stray
execute if score $mt.random mt.score matches 1790..1989 run function mobtamer:sys/common/gacha/only_already_tamed/each/drowned
execute if score $mt.random mt.score matches 1990..2189 run function mobtamer:sys/common/gacha/only_already_tamed/each/husk
execute if score $mt.random mt.score matches 2190..2389 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie
execute if score $mt.random mt.score matches 2390..2589 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie_villager
execute if score $mt.random mt.score matches 2590..2789 run function mobtamer:sys/common/gacha/only_already_tamed/each/vex
execute if score $mt.random mt.score matches 2790..2989 run function mobtamer:sys/common/gacha/only_already_tamed/each/allay
execute if score $mt.random mt.score matches 2990..3189 run function mobtamer:sys/common/gacha/only_already_tamed/each/creeper
execute if score $mt.random mt.score matches 3190..3389 run function mobtamer:sys/common/gacha/only_already_tamed/each/phantom
execute if score $mt.random mt.score matches 3390..3589 run function mobtamer:sys/common/gacha/only_already_tamed/each/cave_spider
execute if score $mt.random mt.score matches 3590..3789 run function mobtamer:sys/common/gacha/only_already_tamed/each/spider
execute if score $mt.random mt.score matches 3790..3989 run function mobtamer:sys/common/gacha/only_already_tamed/each/magma_cube
execute if score $mt.random mt.score matches 3990..4189 run function mobtamer:sys/common/gacha/only_already_tamed/each/silverfish
execute if score $mt.random mt.score matches 4190..4439 run function mobtamer:sys/common/gacha/only_already_tamed/each/axolotl
execute if score $mt.random mt.score matches 4440..4689 run function mobtamer:sys/common/gacha/only_already_tamed/each/bee
execute if score $mt.random mt.score matches 4690..4939 run function mobtamer:sys/common/gacha/only_already_tamed/each/fox
execute if score $mt.random mt.score matches 4940..5189 run function mobtamer:sys/common/gacha/only_already_tamed/each/goat
execute if score $mt.random mt.score matches 5190..5439 run function mobtamer:sys/common/gacha/only_already_tamed/each/trader_llama
execute if score $mt.random mt.score matches 5440..5689 run function mobtamer:sys/common/gacha/only_already_tamed/each/wolf
execute if score $mt.random mt.score matches 5690..5939 run function mobtamer:sys/common/gacha/only_already_tamed/each/llama
execute if score $mt.random mt.score matches 5940..6189 run function mobtamer:sys/common/gacha/only_already_tamed/each/villager
execute if score $mt.random mt.score matches 6190..6439 run function mobtamer:sys/common/gacha/only_already_tamed/each/wandering_trader
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
execute if score $mt.not_tamed mt.score matches 1.. run function mobtamer:sys/common/gacha/only_already_tamed/silver
scoreboard players reset $mt.not_tamed mt.score
