scoreboard players reset $mt.check mt.score
scoreboard players add $mt.new mt.slot 1
execute as @e[team=mt.common,tag=mt.player_check] if score @s mt.slot = $mt.new mt.slot run function mobtamer:sys/player/summon/slot/loop_sub
execute if score $mt.check mt.score matches 1.. run function mobtamer:sys/player/summon/slot/loop
