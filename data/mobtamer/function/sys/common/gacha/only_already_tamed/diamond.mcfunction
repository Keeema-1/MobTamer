scoreboard players reset $mt.not_tamed mt.score
scoreboard players set $mt.temp mt.score 1024
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.temp mt.score *= $mt.random mt.score
function mobtamer:sys/common/random/1024
scoreboard players operation $mt.random mt.score += $mt.temp mt.score
scoreboard players set $mt.temp mt.score 2225
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..49 run function mobtamer:sys/common/gacha/only_already_tamed/each/allay
execute if score $mt.random mt.score matches 50..99 run function mobtamer:sys/common/gacha/only_already_tamed/each/cave_spider
execute if score $mt.random mt.score matches 100..149 run function mobtamer:sys/common/gacha/only_already_tamed/each/creeper
execute if score $mt.random mt.score matches 150..199 run function mobtamer:sys/common/gacha/only_already_tamed/each/drowned
execute if score $mt.random mt.score matches 200..249 run function mobtamer:sys/common/gacha/only_already_tamed/each/endermite
execute if score $mt.random mt.score matches 250..299 run function mobtamer:sys/common/gacha/only_already_tamed/each/husk
execute if score $mt.random mt.score matches 300..349 run function mobtamer:sys/common/gacha/only_already_tamed/each/magma_cube
execute if score $mt.random mt.score matches 350..399 run function mobtamer:sys/common/gacha/only_already_tamed/each/phantom
execute if score $mt.random mt.score matches 400..449 run function mobtamer:sys/common/gacha/only_already_tamed/each/silverfish
execute if score $mt.random mt.score matches 450..499 run function mobtamer:sys/common/gacha/only_already_tamed/each/skeleton
execute if score $mt.random mt.score matches 500..549 run function mobtamer:sys/common/gacha/only_already_tamed/each/spider
execute if score $mt.random mt.score matches 550..599 run function mobtamer:sys/common/gacha/only_already_tamed/each/stray
execute if score $mt.random mt.score matches 600..649 run function mobtamer:sys/common/gacha/only_already_tamed/each/vex
execute if score $mt.random mt.score matches 650..699 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie
execute if score $mt.random mt.score matches 700..749 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombie_villager
execute if score $mt.random mt.score matches 750..824 run function mobtamer:sys/common/gacha/only_already_tamed/each/panda
execute if score $mt.random mt.score matches 825..899 run function mobtamer:sys/common/gacha/only_already_tamed/each/piglin
execute if score $mt.random mt.score matches 900..999 run function mobtamer:sys/common/gacha/only_already_tamed/each/guardian
execute if score $mt.random mt.score matches 1000..1099 run function mobtamer:sys/common/gacha/only_already_tamed/each/pillager
execute if score $mt.random mt.score matches 1100..1199 run function mobtamer:sys/common/gacha/only_already_tamed/each/witch
execute if score $mt.random mt.score matches 1200..1299 run function mobtamer:sys/common/gacha/only_already_tamed/each/wither_skeleton
execute if score $mt.random mt.score matches 1300..1379 run function mobtamer:sys/common/gacha/only_already_tamed/each/polar_bear
execute if score $mt.random mt.score matches 1380..1459 run function mobtamer:sys/common/gacha/only_already_tamed/each/zombified_piglin
execute if score $mt.random mt.score matches 1460..1519 run function mobtamer:sys/common/gacha/only_already_tamed/each/enderman
execute if score $mt.random mt.score matches 1520..1579 run function mobtamer:sys/common/gacha/only_already_tamed/each/hoglin
execute if score $mt.random mt.score matches 1580..1639 run function mobtamer:sys/common/gacha/only_already_tamed/each/zoglin
execute if score $mt.random mt.score matches 1640..1689 run function mobtamer:sys/common/gacha/only_already_tamed/each/blaze
execute if score $mt.random mt.score matches 1690..1739 run function mobtamer:sys/common/gacha/only_already_tamed/each/shulker
execute if score $mt.random mt.score matches 1740..1789 run function mobtamer:sys/common/gacha/only_already_tamed/each/vindicator
execute if score $mt.random mt.score matches 1790..1809 run function mobtamer:sys/common/gacha/only_already_tamed/each/elder_guardian
execute if score $mt.random mt.score matches 1810..1829 run function mobtamer:sys/common/gacha/only_already_tamed/each/evoker
execute if score $mt.random mt.score matches 1830..1849 run function mobtamer:sys/common/gacha/only_already_tamed/each/ghast
execute if score $mt.random mt.score matches 1850..1869 run function mobtamer:sys/common/gacha/only_already_tamed/each/piglin_brute
execute if score $mt.random mt.score matches 1870..1879 run function mobtamer:sys/common/gacha/only_already_tamed/each/iron_golem
execute if score $mt.random mt.score matches 1880..1889 run function mobtamer:sys/common/gacha/only_already_tamed/each/ravager
execute if score $mt.random mt.score matches 1890..1892 run function mobtamer:sys/common/gacha/only_already_tamed/each/warden
execute if score $mt.random mt.score matches 1893..1895 run function mobtamer:sys/common/gacha/only_already_tamed/each/wither
scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.random mt.score
execute if score $mt.not_tamed mt.score matches 1.. run function mobtamer:sys/common/gacha/only_already_tamed/diamond
scoreboard players reset $mt.not_tamed mt.score
