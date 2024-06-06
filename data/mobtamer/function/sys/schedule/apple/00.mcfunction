execute if data entity @s {OnGround:1b} run tag @s remove mt.golden_apple

execute if entity @s[tag=mt.golden_apple] run function mobtamer:sys/schedule/apple/000
