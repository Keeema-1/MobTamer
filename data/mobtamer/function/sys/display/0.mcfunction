execute on vehicle run function mobtamer:sys/display/aec/0

execute if data storage mobtamer:temp data.pet.state{down:1b} run function mobtamer:sys/display/kill
execute unless data storage mobtamer:temp data.pet{is_pet:1b} run function mobtamer:sys/display/kill
execute unless data storage mobtamer:temp data.pet.state{down:1b} run function mobtamer:sys/display/text/0

# execute unless score $mt.pet mt.health matches -2147483648..2147483647 run function mobtamer:sys/display/kill

scoreboard players reset $mt.pet mt.health
scoreboard players reset $mt.pet mt.max_health
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.health.color mt.score

data remove storage mobtamer:temp data.pet
