scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 2682
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..0 run function mobtamer:sys/common/gacha/only_already_tamed/each/warden
execute if score $mt.random mt.score matches 1..1 run function mobtamer:sys/common/gacha/only_already_tamed/each/wither
execute if score $mt.random mt.score matches 2..6 run function mobtamer:sys/common/gacha/only_already_tamed/each/iron_golem
execute if score $mt.random mt.score matches 7..11 run function mobtamer:sys/common/gacha/only_already_tamed/each/ravager
execute if score $mt.random mt.score matches 12..31 run function mobtamer:sys/common/gacha/only_already_tamed/each/piglin_brute
execute if score $mt.random mt.score matches 32..51 run function mobtamer:sys/common/gacha/only_already_tamed/each/elder_guardian
execute if score $mt.random mt.score matches 52..71 run function mobtamer:sys/common/gacha/only_already_tamed/each/evoker
execute if score $mt.random mt.score matches 72..91 run function mobtamer:sys/common/gacha/only_already_tamed/each/ghast
execute if score $mt.random mt.score matches 92..141 run function mobtamer:sys/common/gacha/only_already_tamed/each/vindicator
execute if score $mt.random mt.score matches 142..191 run function mobtamer:sys/common/gacha/only_already_tamed/each/blaze
execute if score $mt.random mt.score matches 192..241 run function mobtamer:sys/common/gacha/only_already_tamed/each/shulker
execute if score $mt.random mt.score matches 242..301 run function mobtamer:sys/common/gacha/only_already_tamed/each/enderman
execute if score $mt.random mt.score matches 302..361 run function mobtamer:sys/common/gacha/only_already_tamed/each/zoglin
execute if score $mt.random mt.score matches 362..421 run function mobtamer:sys/common/gacha/only_already_tamed/each/hoglin
execute if score $mt.random mt.score matches 422..501 run function mobtamer:sys/common/gacha/only_already_tamed/each/polar_bear
execute if score $mt.random mt.score matches 502..581 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombified_piglin
execute if score $mt.random mt.score matches 582..681 run function mobtamer:sys/common/gacha/only_already_tamed/each/guardian
execute if score $mt.random mt.score matches 682..781 run function mobtamer:sys/common/gacha/only_already_tamed/each/pillager
execute if score $mt.random mt.score matches 782..881 run function mobtamer:sys/common/gacha/only_already_tamed/each/wither_skeleton
execute if score $mt.random mt.score matches 882..981 run function mobtamer:sys/common/gacha/only_already_tamed/each/witch
execute if score $mt.random mt.score matches 982..1081 run function mobtamer:sys/common/gacha/only_already_tamed/each/panda
execute if score $mt.random mt.score matches 1082..1181 run function mobtamer:sys/common/gacha/only_already_tamed/each/piglin
execute if score $mt.random mt.score matches 1182..1281 run function mobtamer:sys/common/gacha/only_already_tamed/each/endermite
execute if score $mt.random mt.score matches 1282..1381 run function mobtamer:sys/common/gacha/only_already_tamed/each/skeleton
execute if score $mt.random mt.score matches 1382..1481 run function mobtamer:sys/common/gacha/only_already_tamed/each/stray
execute if score $mt.random mt.score matches 1482..1581 run function mobtamer:sys/common/gacha/only_already_tamed/each/drowned
execute if score $mt.random mt.score matches 1582..1681 run function mobtamer:sys/common/gacha/only_already_tamed/each/husk
execute if score $mt.random mt.score matches 1682..1781 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie
execute if score $mt.random mt.score matches 1782..1881 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie_villager
execute if score $mt.random mt.score matches 1882..1981 run function mobtamer:sys/common/gacha/only_already_tamed/each/vex
execute if score $mt.random mt.score matches 1982..2081 run function mobtamer:sys/common/gacha/only_already_tamed/each/allay
execute if score $mt.random mt.score matches 2082..2181 run function mobtamer:sys/common/gacha/only_already_tamed/each/creeper
execute if score $mt.random mt.score matches 2182..2281 run function mobtamer:sys/common/gacha/only_already_tamed/each/phantom
execute if score $mt.random mt.score matches 2282..2381 run function mobtamer:sys/common/gacha/only_already_tamed/each/cave_spider
execute if score $mt.random mt.score matches 2382..2481 run function mobtamer:sys/common/gacha/only_already_tamed/each/spider
execute if score $mt.random mt.score matches 2482..2581 run function mobtamer:sys/common/gacha/only_already_tamed/each/magma_cube
execute if score $mt.random mt.score matches 2582..2681 run function mobtamer:sys/common/gacha/only_already_tamed/each/silverfish
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
execute if score $mt.not_tamed mt.score matches 1.. run function mobtamer:sys/common/gacha/only_already_tamed/gold
scoreboard players reset $mt.not_tamed mt.score
