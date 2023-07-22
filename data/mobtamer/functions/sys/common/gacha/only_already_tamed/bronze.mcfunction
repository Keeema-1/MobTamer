scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 14840
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..299 run function mobtamer:sys/common/gacha/only_already_tamed/each/bat
execute if score $mt.random mt.score matches 300..599 run function mobtamer:sys/common/gacha/only_already_tamed/each/camel
execute if score $mt.random mt.score matches 600..899 run function mobtamer:sys/common/gacha/only_already_tamed/each/cat
execute if score $mt.random mt.score matches 900..1199 run function mobtamer:sys/common/gacha/only_already_tamed/each/chicken
execute if score $mt.random mt.score matches 1200..1499 run function mobtamer:sys/common/gacha/only_already_tamed/each/cod
execute if score $mt.random mt.score matches 1500..1799 run function mobtamer:sys/common/gacha/only_already_tamed/each/cow
execute if score $mt.random mt.score matches 1800..2099 run function mobtamer:sys/common/gacha/only_already_tamed/each/dolphin
execute if score $mt.random mt.score matches 2100..2399 run function mobtamer:sys/common/gacha/only_already_tamed/each/donkey
execute if score $mt.random mt.score matches 2400..2699 run function mobtamer:sys/common/gacha/only_already_tamed/each/frog
execute if score $mt.random mt.score matches 2700..2999 run function mobtamer:sys/common/gacha/only_already_tamed/each/glow_squid
execute if score $mt.random mt.score matches 3000..3299 run function mobtamer:sys/common/gacha/only_already_tamed/each/horse
execute if score $mt.random mt.score matches 3300..3599 run function mobtamer:sys/common/gacha/only_already_tamed/each/mooshroom
execute if score $mt.random mt.score matches 3600..3899 run function mobtamer:sys/common/gacha/only_already_tamed/each/mule
execute if score $mt.random mt.score matches 3900..4199 run function mobtamer:sys/common/gacha/only_already_tamed/each/ocelot
execute if score $mt.random mt.score matches 4200..4499 run function mobtamer:sys/common/gacha/only_already_tamed/each/parrot
execute if score $mt.random mt.score matches 4500..4799 run function mobtamer:sys/common/gacha/only_already_tamed/each/pig
execute if score $mt.random mt.score matches 4800..5099 run function mobtamer:sys/common/gacha/only_already_tamed/each/pufferfish
execute if score $mt.random mt.score matches 5100..5399 run function mobtamer:sys/common/gacha/only_already_tamed/each/rabbit
execute if score $mt.random mt.score matches 5400..5699 run function mobtamer:sys/common/gacha/only_already_tamed/each/salmon
execute if score $mt.random mt.score matches 5700..5999 run function mobtamer:sys/common/gacha/only_already_tamed/each/sheep
execute if score $mt.random mt.score matches 6000..6299 run function mobtamer:sys/common/gacha/only_already_tamed/each/skeleton_horse
execute if score $mt.random mt.score matches 6300..6599 run function mobtamer:sys/common/gacha/only_already_tamed/each/slime
execute if score $mt.random mt.score matches 6600..6899 run function mobtamer:sys/common/gacha/only_already_tamed/each/sniffer
execute if score $mt.random mt.score matches 6900..7199 run function mobtamer:sys/common/gacha/only_already_tamed/each/snow_golem
execute if score $mt.random mt.score matches 7200..7499 run function mobtamer:sys/common/gacha/only_already_tamed/each/squid
execute if score $mt.random mt.score matches 7500..7799 run function mobtamer:sys/common/gacha/only_already_tamed/each/strider
execute if score $mt.random mt.score matches 7800..8099 run function mobtamer:sys/common/gacha/only_already_tamed/each/tropical_fish
execute if score $mt.random mt.score matches 8100..8399 run function mobtamer:sys/common/gacha/only_already_tamed/each/turtle
execute if score $mt.random mt.score matches 8400..8649 run function mobtamer:sys/common/gacha/only_already_tamed/each/axolotl
execute if score $mt.random mt.score matches 8650..8899 run function mobtamer:sys/common/gacha/only_already_tamed/each/bee
execute if score $mt.random mt.score matches 8900..9149 run function mobtamer:sys/common/gacha/only_already_tamed/each/fox
execute if score $mt.random mt.score matches 9150..9399 run function mobtamer:sys/common/gacha/only_already_tamed/each/goat
execute if score $mt.random mt.score matches 9400..9649 run function mobtamer:sys/common/gacha/only_already_tamed/each/llama
execute if score $mt.random mt.score matches 9650..9899 run function mobtamer:sys/common/gacha/only_already_tamed/each/trader_llama
execute if score $mt.random mt.score matches 9900..10149 run function mobtamer:sys/common/gacha/only_already_tamed/each/villager
execute if score $mt.random mt.score matches 10150..10399 run function mobtamer:sys/common/gacha/only_already_tamed/each/wandering_trader
execute if score $mt.random mt.score matches 10400..10649 run function mobtamer:sys/common/gacha/only_already_tamed/each/wolf
execute if score $mt.random mt.score matches 10650..10849 run function mobtamer:sys/common/gacha/only_already_tamed/each/allay
execute if score $mt.random mt.score matches 10850..11049 run function mobtamer:sys/common/gacha/only_already_tamed/each/cave_spider
execute if score $mt.random mt.score matches 11050..11249 run function mobtamer:sys/common/gacha/only_already_tamed/each/creeper
execute if score $mt.random mt.score matches 11250..11449 run function mobtamer:sys/common/gacha/only_already_tamed/each/drowned
execute if score $mt.random mt.score matches 11450..11649 run function mobtamer:sys/common/gacha/only_already_tamed/each/endermite
execute if score $mt.random mt.score matches 11650..11849 run function mobtamer:sys/common/gacha/only_already_tamed/each/husk
execute if score $mt.random mt.score matches 11850..12049 run function mobtamer:sys/common/gacha/only_already_tamed/each/magma_cube
execute if score $mt.random mt.score matches 12050..12249 run function mobtamer:sys/common/gacha/only_already_tamed/each/phantom
execute if score $mt.random mt.score matches 12250..12449 run function mobtamer:sys/common/gacha/only_already_tamed/each/silverfish
execute if score $mt.random mt.score matches 12450..12649 run function mobtamer:sys/common/gacha/only_already_tamed/each/skeleton
execute if score $mt.random mt.score matches 12650..12849 run function mobtamer:sys/common/gacha/only_already_tamed/each/spider
execute if score $mt.random mt.score matches 12850..13049 run function mobtamer:sys/common/gacha/only_already_tamed/each/stray
execute if score $mt.random mt.score matches 13050..13249 run function mobtamer:sys/common/gacha/only_already_tamed/each/vex
execute if score $mt.random mt.score matches 13250..13449 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie
execute if score $mt.random mt.score matches 13450..13649 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie_villager
execute if score $mt.random mt.score matches 13650..13799 run function mobtamer:sys/common/gacha/only_already_tamed/each/panda
execute if score $mt.random mt.score matches 13800..13949 run function mobtamer:sys/common/gacha/only_already_tamed/each/piglin
execute if score $mt.random mt.score matches 13950..14049 run function mobtamer:sys/common/gacha/only_already_tamed/each/guardian
execute if score $mt.random mt.score matches 14050..14149 run function mobtamer:sys/common/gacha/only_already_tamed/each/pillager
execute if score $mt.random mt.score matches 14150..14249 run function mobtamer:sys/common/gacha/only_already_tamed/each/witch
execute if score $mt.random mt.score matches 14250..14349 run function mobtamer:sys/common/gacha/only_already_tamed/each/wither_skeleton
execute if score $mt.random mt.score matches 14350..14429 run function mobtamer:sys/common/gacha/only_already_tamed/each/polar_bear
execute if score $mt.random mt.score matches 14430..14509 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombified_piglin
execute if score $mt.random mt.score matches 14510..14569 run function mobtamer:sys/common/gacha/only_already_tamed/each/enderman
execute if score $mt.random mt.score matches 14570..14629 run function mobtamer:sys/common/gacha/only_already_tamed/each/hoglin
execute if score $mt.random mt.score matches 14630..14689 run function mobtamer:sys/common/gacha/only_already_tamed/each/zoglin
execute if score $mt.random mt.score matches 14690..14739 run function mobtamer:sys/common/gacha/only_already_tamed/each/blaze
execute if score $mt.random mt.score matches 14740..14789 run function mobtamer:sys/common/gacha/only_already_tamed/each/shulker
execute if score $mt.random mt.score matches 14790..14839 run function mobtamer:sys/common/gacha/only_already_tamed/each/vindicator
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
execute if score $mt.not_tamed mt.score matches 1.. run function mobtamer:sys/common/gacha/only_already_tamed/bronze
scoreboard players reset $mt.not_tamed mt.score
