scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 2682
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..99 run function mobtamer:command/tame/summon/allay
execute if score $mt.random mt.score matches 100..199 run function mobtamer:command/tame/summon/cave_spider
execute if score $mt.random mt.score matches 200..299 run function mobtamer:command/tame/summon/creeper
execute if score $mt.random mt.score matches 300..399 run function mobtamer:command/tame/summon/drowned
execute if score $mt.random mt.score matches 400..499 run function mobtamer:command/tame/summon/endermite
execute if score $mt.random mt.score matches 500..599 run function mobtamer:command/tame/summon/husk
execute if score $mt.random mt.score matches 600..699 run function mobtamer:command/tame/summon/magma_cube
execute if score $mt.random mt.score matches 700..799 run function mobtamer:command/tame/summon/phantom
execute if score $mt.random mt.score matches 800..899 run function mobtamer:command/tame/summon/silverfish
execute if score $mt.random mt.score matches 900..999 run function mobtamer:command/tame/summon/skeleton
execute if score $mt.random mt.score matches 1000..1099 run function mobtamer:command/tame/summon/spider
execute if score $mt.random mt.score matches 1100..1199 run function mobtamer:command/tame/summon/stray
execute if score $mt.random mt.score matches 1200..1299 run function mobtamer:command/tame/summon/vex
execute if score $mt.random mt.score matches 1300..1399 run function mobtamer:command/tame/summon/zombie
execute if score $mt.random mt.score matches 1400..1499 run function mobtamer:command/tame/summon/zombie_villager
execute if score $mt.random mt.score matches 1500..1599 run function mobtamer:command/tame/summon/panda
execute if score $mt.random mt.score matches 1600..1699 run function mobtamer:command/tame/summon/piglin
execute if score $mt.random mt.score matches 1700..1799 run function mobtamer:command/tame/summon/guardian
execute if score $mt.random mt.score matches 1800..1899 run function mobtamer:command/tame/summon/pillager
execute if score $mt.random mt.score matches 1900..1999 run function mobtamer:command/tame/summon/witch
execute if score $mt.random mt.score matches 2000..2099 run function mobtamer:command/tame/summon/wither_skeleton
execute if score $mt.random mt.score matches 2100..2179 run function mobtamer:command/tame/summon/polar_bear
execute if score $mt.random mt.score matches 2180..2259 run function mobtamer:command/tame/summon/zombified_piglin
execute if score $mt.random mt.score matches 2260..2319 run function mobtamer:command/tame/summon/enderman
execute if score $mt.random mt.score matches 2320..2379 run function mobtamer:command/tame/summon/hoglin
execute if score $mt.random mt.score matches 2380..2439 run function mobtamer:command/tame/summon/zoglin
execute if score $mt.random mt.score matches 2440..2489 run function mobtamer:command/tame/summon/blaze
execute if score $mt.random mt.score matches 2490..2539 run function mobtamer:command/tame/summon/shulker
execute if score $mt.random mt.score matches 2540..2589 run function mobtamer:command/tame/summon/vindicator
execute if score $mt.random mt.score matches 2590..2609 run function mobtamer:command/tame/summon/elder_guardian
execute if score $mt.random mt.score matches 2610..2629 run function mobtamer:command/tame/summon/evoker
execute if score $mt.random mt.score matches 2630..2649 run function mobtamer:command/tame/summon/ghast
execute if score $mt.random mt.score matches 2650..2669 run function mobtamer:command/tame/summon/piglin_brute
execute if score $mt.random mt.score matches 2670..2674 run function mobtamer:command/tame/summon/iron_golem
execute if score $mt.random mt.score matches 2675..2679 run function mobtamer:command/tame/summon/ravager
execute if score $mt.random mt.score matches 2680..2680 run function mobtamer:command/tame/summon/warden
execute if score $mt.random mt.score matches 2681..2681 run function mobtamer:command/tame/summon/wither
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
scoreboard players reset $mt.not_tamed mt.score
