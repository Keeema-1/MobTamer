function mobtamer:sys/common/random/1024
scoreboard players set $mt.temp mt.score 56
scoreboard players operation $mt.random mt.score %= $mt.temp mt.score
execute if score $mt.random mt.score matches 0..11 run function mobtamer:sys/trader/daily_change/pet_equipment/append/wooden_hoe
execute if score $mt.random mt.score matches 12..23 run function mobtamer:sys/trader/daily_change/pet_equipment/append/golden_hoe
execute if score $mt.random mt.score matches 24..31 run function mobtamer:sys/trader/daily_change/pet_equipment/append/leather_helmet
execute if score $mt.random mt.score matches 32..39 run function mobtamer:sys/trader/daily_change/pet_equipment/append/leather_chestplate
execute if score $mt.random mt.score matches 40..47 run function mobtamer:sys/trader/daily_change/pet_equipment/append/leather_leggings
execute if score $mt.random mt.score matches 48..55 run function mobtamer:sys/trader/daily_change/pet_equipment/append/leather_boots
