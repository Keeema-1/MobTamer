scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 14840
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..299 run function mobtamer:command/tame/summon/bat
execute if score $mt.random mt.score matches 300..599 run function mobtamer:command/tame/summon/camel
execute if score $mt.random mt.score matches 600..899 run function mobtamer:command/tame/summon/cat
execute if score $mt.random mt.score matches 900..1199 run function mobtamer:command/tame/summon/chicken
execute if score $mt.random mt.score matches 1200..1499 run function mobtamer:command/tame/summon/cod
execute if score $mt.random mt.score matches 1500..1799 run function mobtamer:command/tame/summon/cow
execute if score $mt.random mt.score matches 1800..2099 run function mobtamer:command/tame/summon/dolphin
execute if score $mt.random mt.score matches 2100..2399 run function mobtamer:command/tame/summon/donkey
execute if score $mt.random mt.score matches 2400..2699 run function mobtamer:command/tame/summon/frog
execute if score $mt.random mt.score matches 2700..2999 run function mobtamer:command/tame/summon/glow_squid
execute if score $mt.random mt.score matches 3000..3299 run function mobtamer:command/tame/summon/horse
execute if score $mt.random mt.score matches 3300..3599 run function mobtamer:command/tame/summon/mooshroom
execute if score $mt.random mt.score matches 3600..3899 run function mobtamer:command/tame/summon/mule
execute if score $mt.random mt.score matches 3900..4199 run function mobtamer:command/tame/summon/ocelot
execute if score $mt.random mt.score matches 4200..4499 run function mobtamer:command/tame/summon/parrot
execute if score $mt.random mt.score matches 4500..4799 run function mobtamer:command/tame/summon/pig
execute if score $mt.random mt.score matches 4800..5099 run function mobtamer:command/tame/summon/pufferfish
execute if score $mt.random mt.score matches 5100..5399 run function mobtamer:command/tame/summon/rabbit
execute if score $mt.random mt.score matches 5400..5699 run function mobtamer:command/tame/summon/salmon
execute if score $mt.random mt.score matches 5700..5999 run function mobtamer:command/tame/summon/sheep
execute if score $mt.random mt.score matches 6000..6299 run function mobtamer:command/tame/summon/skeleton_horse
execute if score $mt.random mt.score matches 6300..6599 run function mobtamer:command/tame/summon/slime
execute if score $mt.random mt.score matches 6600..6899 run function mobtamer:command/tame/summon/sniffer
execute if score $mt.random mt.score matches 6900..7199 run function mobtamer:command/tame/summon/snow_golem
execute if score $mt.random mt.score matches 7200..7499 run function mobtamer:command/tame/summon/squid
execute if score $mt.random mt.score matches 7500..7799 run function mobtamer:command/tame/summon/strider
execute if score $mt.random mt.score matches 7800..8099 run function mobtamer:command/tame/summon/tropical_fish
execute if score $mt.random mt.score matches 8100..8399 run function mobtamer:command/tame/summon/turtle
execute if score $mt.random mt.score matches 8400..8649 run function mobtamer:command/tame/summon/axolotl
execute if score $mt.random mt.score matches 8650..8899 run function mobtamer:command/tame/summon/bee
execute if score $mt.random mt.score matches 8900..9149 run function mobtamer:command/tame/summon/fox
execute if score $mt.random mt.score matches 9150..9399 run function mobtamer:command/tame/summon/goat
execute if score $mt.random mt.score matches 9400..9649 run function mobtamer:command/tame/summon/llama
execute if score $mt.random mt.score matches 9650..9899 run function mobtamer:command/tame/summon/trader_llama
execute if score $mt.random mt.score matches 9900..10149 run function mobtamer:command/tame/summon/villager
execute if score $mt.random mt.score matches 10150..10399 run function mobtamer:command/tame/summon/wandering_trader
execute if score $mt.random mt.score matches 10400..10649 run function mobtamer:command/tame/summon/wolf
execute if score $mt.random mt.score matches 10650..10849 run function mobtamer:command/tame/summon/allay
execute if score $mt.random mt.score matches 10850..11049 run function mobtamer:command/tame/summon/cave_spider
execute if score $mt.random mt.score matches 11050..11249 run function mobtamer:command/tame/summon/creeper
execute if score $mt.random mt.score matches 11250..11449 run function mobtamer:command/tame/summon/drowned
execute if score $mt.random mt.score matches 11450..11649 run function mobtamer:command/tame/summon/endermite
execute if score $mt.random mt.score matches 11650..11849 run function mobtamer:command/tame/summon/husk
execute if score $mt.random mt.score matches 11850..12049 run function mobtamer:command/tame/summon/magma_cube
execute if score $mt.random mt.score matches 12050..12249 run function mobtamer:command/tame/summon/phantom
execute if score $mt.random mt.score matches 12250..12449 run function mobtamer:command/tame/summon/silverfish
execute if score $mt.random mt.score matches 12450..12649 run function mobtamer:command/tame/summon/skeleton
execute if score $mt.random mt.score matches 12650..12849 run function mobtamer:command/tame/summon/spider
execute if score $mt.random mt.score matches 12850..13049 run function mobtamer:command/tame/summon/stray
execute if score $mt.random mt.score matches 13050..13249 run function mobtamer:command/tame/summon/vex
execute if score $mt.random mt.score matches 13250..13449 run function mobtamer:command/tame/summon/zombie
execute if score $mt.random mt.score matches 13450..13649 run function mobtamer:command/tame/summon/zombie_villager
execute if score $mt.random mt.score matches 13650..13799 run function mobtamer:command/tame/summon/panda
execute if score $mt.random mt.score matches 13800..13949 run function mobtamer:command/tame/summon/piglin
execute if score $mt.random mt.score matches 13950..14049 run function mobtamer:command/tame/summon/guardian
execute if score $mt.random mt.score matches 14050..14149 run function mobtamer:command/tame/summon/pillager
execute if score $mt.random mt.score matches 14150..14249 run function mobtamer:command/tame/summon/witch
execute if score $mt.random mt.score matches 14250..14349 run function mobtamer:command/tame/summon/wither_skeleton
execute if score $mt.random mt.score matches 14350..14429 run function mobtamer:command/tame/summon/polar_bear
execute if score $mt.random mt.score matches 14430..14509 run function mobtamer:command/tame/summon/zombified_piglin
execute if score $mt.random mt.score matches 14510..14569 run function mobtamer:command/tame/summon/enderman
execute if score $mt.random mt.score matches 14570..14629 run function mobtamer:command/tame/summon/hoglin
execute if score $mt.random mt.score matches 14630..14689 run function mobtamer:command/tame/summon/zoglin
execute if score $mt.random mt.score matches 14690..14739 run function mobtamer:command/tame/summon/blaze
execute if score $mt.random mt.score matches 14740..14789 run function mobtamer:command/tame/summon/shulker
execute if score $mt.random mt.score matches 14790..14839 run function mobtamer:command/tame/summon/vindicator
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
scoreboard players reset $mt.not_tamed mt.score
