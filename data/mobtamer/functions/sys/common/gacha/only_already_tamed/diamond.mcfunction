scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 2145
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..2 run function mobtamer:sys/common/gacha/only_already_tamed/each/warden
execute if score $mt.random mt.score matches 3..5 run function mobtamer:sys/common/gacha/only_already_tamed/each/wither
execute if score $mt.random mt.score matches 6..15 run function mobtamer:sys/common/gacha/only_already_tamed/each/iron_golem
execute if score $mt.random mt.score matches 16..25 run function mobtamer:sys/common/gacha/only_already_tamed/each/ravager
execute if score $mt.random mt.score matches 26..45 run function mobtamer:sys/common/gacha/only_already_tamed/each/piglin_brute
execute if score $mt.random mt.score matches 46..65 run function mobtamer:sys/common/gacha/only_already_tamed/each/elder_guardian
execute if score $mt.random mt.score matches 66..85 run function mobtamer:sys/common/gacha/only_already_tamed/each/evoker
execute if score $mt.random mt.score matches 86..105 run function mobtamer:sys/common/gacha/only_already_tamed/each/ghast
execute if score $mt.random mt.score matches 106..155 run function mobtamer:sys/common/gacha/only_already_tamed/each/vindicator
execute if score $mt.random mt.score matches 156..205 run function mobtamer:sys/common/gacha/only_already_tamed/each/blaze
execute if score $mt.random mt.score matches 206..255 run function mobtamer:sys/common/gacha/only_already_tamed/each/shulker
execute if score $mt.random mt.score matches 256..315 run function mobtamer:sys/common/gacha/only_already_tamed/each/enderman
execute if score $mt.random mt.score matches 316..375 run function mobtamer:sys/common/gacha/only_already_tamed/each/zoglin
execute if score $mt.random mt.score matches 376..435 run function mobtamer:sys/common/gacha/only_already_tamed/each/hoglin
execute if score $mt.random mt.score matches 436..515 run function mobtamer:sys/common/gacha/only_already_tamed/each/polar_bear
execute if score $mt.random mt.score matches 516..595 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombified_piglin
execute if score $mt.random mt.score matches 596..695 run function mobtamer:sys/common/gacha/only_already_tamed/each/guardian
execute if score $mt.random mt.score matches 696..795 run function mobtamer:sys/common/gacha/only_already_tamed/each/pillager
execute if score $mt.random mt.score matches 796..895 run function mobtamer:sys/common/gacha/only_already_tamed/each/wither_skeleton
execute if score $mt.random mt.score matches 896..995 run function mobtamer:sys/common/gacha/only_already_tamed/each/witch
execute if score $mt.random mt.score matches 996..1070 run function mobtamer:sys/common/gacha/only_already_tamed/each/panda
execute if score $mt.random mt.score matches 1071..1145 run function mobtamer:sys/common/gacha/only_already_tamed/each/piglin
execute if score $mt.random mt.score matches 1146..1195 run function mobtamer:sys/common/gacha/only_already_tamed/each/endermite
execute if score $mt.random mt.score matches 1196..1245 run function mobtamer:sys/common/gacha/only_already_tamed/each/skeleton
execute if score $mt.random mt.score matches 1246..1295 run function mobtamer:sys/common/gacha/only_already_tamed/each/stray
execute if score $mt.random mt.score matches 1296..1345 run function mobtamer:sys/common/gacha/only_already_tamed/each/drowned
execute if score $mt.random mt.score matches 1346..1395 run function mobtamer:sys/common/gacha/only_already_tamed/each/husk
execute if score $mt.random mt.score matches 1396..1445 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie
execute if score $mt.random mt.score matches 1446..1495 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie_villager
execute if score $mt.random mt.score matches 1496..1545 run function mobtamer:sys/common/gacha/only_already_tamed/each/vex
execute if score $mt.random mt.score matches 1546..1595 run function mobtamer:sys/common/gacha/only_already_tamed/each/allay
execute if score $mt.random mt.score matches 1596..1645 run function mobtamer:sys/common/gacha/only_already_tamed/each/creeper
execute if score $mt.random mt.score matches 1646..1695 run function mobtamer:sys/common/gacha/only_already_tamed/each/phantom
execute if score $mt.random mt.score matches 1696..1745 run function mobtamer:sys/common/gacha/only_already_tamed/each/cave_spider
execute if score $mt.random mt.score matches 1746..1795 run function mobtamer:sys/common/gacha/only_already_tamed/each/spider
execute if score $mt.random mt.score matches 1796..1845 run function mobtamer:sys/common/gacha/only_already_tamed/each/magma_cube
execute if score $mt.random mt.score matches 1846..1895 run function mobtamer:sys/common/gacha/only_already_tamed/each/silverfish
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
execute if score $mt.not_tamed mt.score matches 1.. run function mobtamer:sys/common/gacha/only_already_tamed/diamond
scoreboard players reset $mt.not_tamed mt.score
