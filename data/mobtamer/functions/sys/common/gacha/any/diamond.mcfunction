scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 2145
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..2 run function mobtamer:command/tame/summon/warden
execute if score $mt.random mt.score matches 3..5 run function mobtamer:command/tame/summon/wither
execute if score $mt.random mt.score matches 6..15 run function mobtamer:command/tame/summon/iron_golem
execute if score $mt.random mt.score matches 16..25 run function mobtamer:command/tame/summon/ravager
execute if score $mt.random mt.score matches 26..45 run function mobtamer:command/tame/summon/piglin_brute
execute if score $mt.random mt.score matches 46..65 run function mobtamer:command/tame/summon/elder_guardian
execute if score $mt.random mt.score matches 66..85 run function mobtamer:command/tame/summon/evoker
execute if score $mt.random mt.score matches 86..105 run function mobtamer:command/tame/summon/ghast
execute if score $mt.random mt.score matches 106..155 run function mobtamer:command/tame/summon/vindicator
execute if score $mt.random mt.score matches 156..205 run function mobtamer:command/tame/summon/blaze
execute if score $mt.random mt.score matches 206..255 run function mobtamer:command/tame/summon/shulker
execute if score $mt.random mt.score matches 256..315 run function mobtamer:command/tame/summon/enderman
execute if score $mt.random mt.score matches 316..375 run function mobtamer:command/tame/summon/zoglin
execute if score $mt.random mt.score matches 376..435 run function mobtamer:command/tame/summon/hoglin
execute if score $mt.random mt.score matches 436..515 run function mobtamer:command/tame/summon/polar_bear
execute if score $mt.random mt.score matches 516..595 run function mobtamer:command/tame/summon/zombified_piglin
execute if score $mt.random mt.score matches 596..695 run function mobtamer:command/tame/summon/guardian
execute if score $mt.random mt.score matches 696..795 run function mobtamer:command/tame/summon/pillager
execute if score $mt.random mt.score matches 796..895 run function mobtamer:command/tame/summon/wither_skeleton
execute if score $mt.random mt.score matches 896..995 run function mobtamer:command/tame/summon/witch
execute if score $mt.random mt.score matches 996..1070 run function mobtamer:command/tame/summon/panda
execute if score $mt.random mt.score matches 1071..1145 run function mobtamer:command/tame/summon/piglin
execute if score $mt.random mt.score matches 1146..1195 run function mobtamer:command/tame/summon/endermite
execute if score $mt.random mt.score matches 1196..1245 run function mobtamer:command/tame/summon/skeleton
execute if score $mt.random mt.score matches 1246..1295 run function mobtamer:command/tame/summon/stray
execute if score $mt.random mt.score matches 1296..1345 run function mobtamer:command/tame/summon/drowned
execute if score $mt.random mt.score matches 1346..1395 run function mobtamer:command/tame/summon/husk
execute if score $mt.random mt.score matches 1396..1445 run function mobtamer:command/tame/summon/zombie
execute if score $mt.random mt.score matches 1446..1495 run function mobtamer:command/tame/summon/zombie_villager
execute if score $mt.random mt.score matches 1496..1545 run function mobtamer:command/tame/summon/vex
execute if score $mt.random mt.score matches 1546..1595 run function mobtamer:command/tame/summon/allay
execute if score $mt.random mt.score matches 1596..1645 run function mobtamer:command/tame/summon/creeper
execute if score $mt.random mt.score matches 1646..1695 run function mobtamer:command/tame/summon/phantom
execute if score $mt.random mt.score matches 1696..1745 run function mobtamer:command/tame/summon/cave_spider
execute if score $mt.random mt.score matches 1746..1795 run function mobtamer:command/tame/summon/spider
execute if score $mt.random mt.score matches 1796..1845 run function mobtamer:command/tame/summon/magma_cube
execute if score $mt.random mt.score matches 1846..1895 run function mobtamer:command/tame/summon/silverfish
execute if score $mt.random mt.score matches 1896..1910 run function mobtamer:command/tame/summon/unique/drowned_trident
execute if score $mt.random mt.score matches 1911..1913 run function mobtamer:command/tame/summon/unique/enderman_diamond_block
execute if score $mt.random mt.score matches 1914..1963 run function mobtamer:command/tame/summon/unique/killer_rabbit
execute if score $mt.random mt.score matches 1964..1973 run function mobtamer:command/tame/summon/unique/phantom_size_5
execute if score $mt.random mt.score matches 1974..1979 run function mobtamer:command/tame/summon/unique/phantom_size_10
execute if score $mt.random mt.score matches 1980..2009 run function mobtamer:command/tame/summon/unique/pillager_firework
execute if score $mt.random mt.score matches 2010..2024 run function mobtamer:command/tame/summon/unique/powered_creeper
execute if score $mt.random mt.score matches 2025..2039 run function mobtamer:command/tame/summon/unique/skeleton_poison_arrow
execute if score $mt.random mt.score matches 2040..2069 run function mobtamer:command/tame/summon/unique/wither_skeleton_bow
execute if score $mt.random mt.score matches 2070..2084 run function mobtamer:command/tame/summon/unique/azalea_zombie
execute if score $mt.random mt.score matches 2085..2099 run function mobtamer:command/tame/summon/unique/enderman_diamond_ore
execute if score $mt.random mt.score matches 2100..2114 run function mobtamer:command/tame/summon/unique/mushroom_zombie
execute if score $mt.random mt.score matches 2115..2129 run function mobtamer:command/tame/summon/unique/pumpkin_skeleton
execute if score $mt.random mt.score matches 2130..2144 run function mobtamer:command/tame/summon/unique/pumpkin_zombie
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
scoreboard players reset $mt.not_tamed mt.score
