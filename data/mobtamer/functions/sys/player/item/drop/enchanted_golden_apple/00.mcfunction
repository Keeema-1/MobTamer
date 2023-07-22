
execute on origin if entity @s[tag=mt.player_check] run scoreboard players set $mt.apple_check mt.score 1
execute if score $mt.apple_check mt.score matches 1.. run function mobtamer:sys/player/item/drop/enchanted_golden_apple/000

scoreboard players reset $mt.apple_check mt.score
