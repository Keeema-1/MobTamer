scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 2225
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..49 run function mobtamer:command/tame/summon/allay
execute if score $mt.random mt.score matches 50..99 run function mobtamer:command/tame/summon/cave_spider
execute if score $mt.random mt.score matches 100..149 run function mobtamer:command/tame/summon/creeper
execute if score $mt.random mt.score matches 150..199 run function mobtamer:command/tame/summon/drowned
execute if score $mt.random mt.score matches 200..249 run function mobtamer:command/tame/summon/endermite
execute if score $mt.random mt.score matches 250..299 run function mobtamer:command/tame/summon/husk
execute if score $mt.random mt.score matches 300..349 run function mobtamer:command/tame/summon/magma_cube
execute if score $mt.random mt.score matches 350..399 run function mobtamer:command/tame/summon/phantom
execute if score $mt.random mt.score matches 400..449 run function mobtamer:command/tame/summon/silverfish
execute if score $mt.random mt.score matches 450..499 run function mobtamer:command/tame/summon/skeleton
execute if score $mt.random mt.score matches 500..549 run function mobtamer:command/tame/summon/spider
execute if score $mt.random mt.score matches 550..599 run function mobtamer:command/tame/summon/stray
execute if score $mt.random mt.score matches 600..649 run function mobtamer:command/tame/summon/vex
execute if score $mt.random mt.score matches 650..699 run function mobtamer:command/tame/summon/zombie
execute if score $mt.random mt.score matches 700..749 run function mobtamer:command/tame/summon/zombie_villager
execute if score $mt.random mt.score matches 750..824 run function mobtamer:command/tame/summon/panda
execute if score $mt.random mt.score matches 825..899 run function mobtamer:command/tame/summon/piglin
execute if score $mt.random mt.score matches 900..999 run function mobtamer:command/tame/summon/guardian
execute if score $mt.random mt.score matches 1000..1099 run function mobtamer:command/tame/summon/pillager
execute if score $mt.random mt.score matches 1100..1199 run function mobtamer:command/tame/summon/witch
execute if score $mt.random mt.score matches 1200..1299 run function mobtamer:command/tame/summon/wither_skeleton
execute if score $mt.random mt.score matches 1300..1379 run function mobtamer:command/tame/summon/polar_bear
execute if score $mt.random mt.score matches 1380..1459 run function mobtamer:command/tame/summon/zombified_piglin
execute if score $mt.random mt.score matches 1460..1519 run function mobtamer:command/tame/summon/enderman
execute if score $mt.random mt.score matches 1520..1579 run function mobtamer:command/tame/summon/hoglin
execute if score $mt.random mt.score matches 1580..1639 run function mobtamer:command/tame/summon/zoglin
execute if score $mt.random mt.score matches 1640..1689 run function mobtamer:command/tame/summon/blaze
execute if score $mt.random mt.score matches 1690..1739 run function mobtamer:command/tame/summon/shulker
execute if score $mt.random mt.score matches 1740..1789 run function mobtamer:command/tame/summon/vindicator
execute if score $mt.random mt.score matches 1790..1809 run function mobtamer:command/tame/summon/elder_guardian
execute if score $mt.random mt.score matches 1810..1829 run function mobtamer:command/tame/summon/evoker
execute if score $mt.random mt.score matches 1830..1849 run function mobtamer:command/tame/summon/ghast
execute if score $mt.random mt.score matches 1850..1869 run function mobtamer:command/tame/summon/piglin_brute
execute if score $mt.random mt.score matches 1870..1879 run function mobtamer:command/tame/summon/iron_golem
execute if score $mt.random mt.score matches 1880..1889 run function mobtamer:command/tame/summon/ravager
execute if score $mt.random mt.score matches 1890..1892 run function mobtamer:command/tame/summon/warden
execute if score $mt.random mt.score matches 1893..1895 run function mobtamer:command/tame/summon/wither
execute if score $mt.random mt.score matches 1896..1945 run function mobtamer:command/tame/summon/unique/killer_rabbit
execute if score $mt.random mt.score matches 1946..1995 run function mobtamer:command/tame/summon/unique/zombie_horse
execute if score $mt.random mt.score matches 1996..2025 run function mobtamer:command/tame/summon/unique/pillager_firework
execute if score $mt.random mt.score matches 2026..2055 run function mobtamer:command/tame/summon/unique/wither_skeleton_bow
execute if score $mt.random mt.score matches 2056..2085 run function mobtamer:command/tame/summon/unique/illusioner
execute if score $mt.random mt.score matches 2086..2100 run function mobtamer:command/tame/summon/unique/drowned_trident
execute if score $mt.random mt.score matches 2101..2115 run function mobtamer:command/tame/summon/unique/powered_creeper
execute if score $mt.random mt.score matches 2116..2130 run function mobtamer:command/tame/summon/unique/skeleton_poison_arrow
execute if score $mt.random mt.score matches 2131..2145 run function mobtamer:command/tame/summon/unique/azalea_zombie
execute if score $mt.random mt.score matches 2146..2160 run function mobtamer:command/tame/summon/unique/enderman_diamond_ore
execute if score $mt.random mt.score matches 2161..2175 run function mobtamer:command/tame/summon/unique/mushroom_zombie
execute if score $mt.random mt.score matches 2176..2190 run function mobtamer:command/tame/summon/unique/pumpkin_skeleton
execute if score $mt.random mt.score matches 2191..2205 run function mobtamer:command/tame/summon/unique/pumpkin_zombie
execute if score $mt.random mt.score matches 2206..2215 run function mobtamer:command/tame/summon/unique/phantom_size_5
execute if score $mt.random mt.score matches 2216..2221 run function mobtamer:command/tame/summon/unique/phantom_size_10
execute if score $mt.random mt.score matches 2222..2224 run function mobtamer:command/tame/summon/unique/enderman_diamond_block
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
scoreboard players reset $mt.not_tamed mt.score
