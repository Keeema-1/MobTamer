function mobtamer:sys/common/random/1024
scoreboard players set $mt.temp mt.score 75
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0 run function mobtamer:command/tame/summon/guardian
execute if score $mt.random mt.score matches 1 run function mobtamer:command/tame/summon/drowned
execute if score $mt.random mt.score matches 2 run function mobtamer:command/tame/summon/elder_guardian
execute if score $mt.random mt.score matches 3 run function mobtamer:command/tame/summon/turtle
execute if score $mt.random mt.score matches 4 run function mobtamer:command/tame/summon/axolotl
execute if score $mt.random mt.score matches 5 run function mobtamer:command/tame/summon/dolphin
execute if score $mt.random mt.score matches 6 run function mobtamer:command/tame/summon/glow_squid
execute if score $mt.random mt.score matches 7 run function mobtamer:command/tame/summon/cod
execute if score $mt.random mt.score matches 8 run function mobtamer:command/tame/summon/pufferfish
execute if score $mt.random mt.score matches 9 run function mobtamer:command/tame/summon/salmon
execute if score $mt.random mt.score matches 10 run function mobtamer:command/tame/summon/tropical_fish
execute if score $mt.random mt.score matches 11 run function mobtamer:command/tame/summon/squid
execute if score $mt.random mt.score matches 12 run function mobtamer:command/tame/summon/witch
execute if score $mt.random mt.score matches 13 run function mobtamer:command/tame/summon/vindicator
execute if score $mt.random mt.score matches 14 run function mobtamer:command/tame/summon/pillager
execute if score $mt.random mt.score matches 15 run function mobtamer:command/tame/summon/evoker
execute if score $mt.random mt.score matches 16 run function mobtamer:command/tame/summon/vex
execute if score $mt.random mt.score matches 17 run function mobtamer:command/tame/summon/ravager
execute if score $mt.random mt.score matches 18 run function mobtamer:command/tame/summon/husk
execute if score $mt.random mt.score matches 19 run function mobtamer:command/tame/summon/zombie
execute if score $mt.random mt.score matches 20 run function mobtamer:command/tame/summon/zombie_villager
execute if score $mt.random mt.score matches 21 run function mobtamer:command/tame/summon/skeleton
execute if score $mt.random mt.score matches 22 run function mobtamer:command/tame/summon/stray
execute if score $mt.random mt.score matches 23 run function mobtamer:command/tame/summon/phantom
execute if score $mt.random mt.score matches 24 run function mobtamer:command/tame/summon/creeper
execute if score $mt.random mt.score matches 25 run function mobtamer:command/tame/summon/slime
execute if score $mt.random mt.score matches 26 run function mobtamer:command/tame/summon/warden
execute if score $mt.random mt.score matches 27 run function mobtamer:command/tame/summon/enderman
execute if score $mt.random mt.score matches 28 run function mobtamer:command/tame/summon/silverfish
execute if score $mt.random mt.score matches 29 run function mobtamer:command/tame/summon/spider
execute if score $mt.random mt.score matches 30 run function mobtamer:command/tame/summon/cave_spider
execute if score $mt.random mt.score matches 31 run function mobtamer:command/tame/summon/allay
execute if score $mt.random mt.score matches 32 run function mobtamer:command/tame/summon/villager
execute if score $mt.random mt.score matches 33 run function mobtamer:command/tame/summon/wandering_trader
execute if score $mt.random mt.score matches 34 run function mobtamer:command/tame/summon/iron_golem
execute if score $mt.random mt.score matches 35 run function mobtamer:command/tame/summon/snow_golem
execute if score $mt.random mt.score matches 36 run function mobtamer:command/tame/summon/camel
execute if score $mt.random mt.score matches 37 run function mobtamer:command/tame/summon/polar_bear
execute if score $mt.random mt.score matches 38 run function mobtamer:command/tame/summon/panda
execute if score $mt.random mt.score matches 39 run function mobtamer:command/tame/summon/bee
execute if score $mt.random mt.score matches 40 run function mobtamer:command/tame/summon/fox
execute if score $mt.random mt.score matches 41 run function mobtamer:command/tame/summon/goat
execute if score $mt.random mt.score matches 42 run function mobtamer:command/tame/summon/frog
execute if score $mt.random mt.score matches 43 run function mobtamer:command/tame/summon/cat
execute if score $mt.random mt.score matches 44 run function mobtamer:command/tame/summon/ocelot
execute if score $mt.random mt.score matches 45 run function mobtamer:command/tame/summon/cow
execute if score $mt.random mt.score matches 46 run function mobtamer:command/tame/summon/mooshroom
execute if score $mt.random mt.score matches 47 run function mobtamer:command/tame/summon/pig
execute if score $mt.random mt.score matches 48 run function mobtamer:command/tame/summon/sheep
execute if score $mt.random mt.score matches 49 run function mobtamer:command/tame/summon/bat
execute if score $mt.random mt.score matches 50 run function mobtamer:command/tame/summon/parrot
execute if score $mt.random mt.score matches 51 run function mobtamer:command/tame/summon/chicken
execute if score $mt.random mt.score matches 52 run function mobtamer:command/tame/summon/rabbit
execute if score $mt.random mt.score matches 53 run function mobtamer:command/tame/summon/llama
execute if score $mt.random mt.score matches 54 run function mobtamer:command/tame/summon/trader_llama
execute if score $mt.random mt.score matches 55 run function mobtamer:command/tame/summon/donkey
execute if score $mt.random mt.score matches 56 run function mobtamer:command/tame/summon/horse
execute if score $mt.random mt.score matches 57 run function mobtamer:command/tame/summon/mule
execute if score $mt.random mt.score matches 58 run function mobtamer:command/tame/summon/wolf
execute if score $mt.random mt.score matches 59 run function mobtamer:command/tame/summon/zoglin
execute if score $mt.random mt.score matches 60 run function mobtamer:command/tame/summon/skeleton_horse
execute if score $mt.random mt.score matches 61 run function mobtamer:command/tame/summon/zombie_horse
execute if score $mt.random mt.score matches 62 run function mobtamer:command/tame/summon/sniffer
execute if score $mt.random mt.score matches 63 run function mobtamer:command/tame/summon/endermite
execute if score $mt.random mt.score matches 64 run function mobtamer:command/tame/summon/wither
execute if score $mt.random mt.score matches 65 run function mobtamer:command/tame/summon/hoglin
execute if score $mt.random mt.score matches 66 run function mobtamer:command/tame/summon/piglin_brute
execute if score $mt.random mt.score matches 67 run function mobtamer:command/tame/summon/blaze
execute if score $mt.random mt.score matches 68 run function mobtamer:command/tame/summon/zombified_piglin
execute if score $mt.random mt.score matches 69 run function mobtamer:command/tame/summon/ghast
execute if score $mt.random mt.score matches 70 run function mobtamer:command/tame/summon/wither_skeleton
execute if score $mt.random mt.score matches 71 run function mobtamer:command/tame/summon/strider
execute if score $mt.random mt.score matches 72 run function mobtamer:command/tame/summon/piglin
execute if score $mt.random mt.score matches 73 run function mobtamer:command/tame/summon/magma_cube
execute if score $mt.random mt.score matches 74 run function mobtamer:command/tame/summon/shulker
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
