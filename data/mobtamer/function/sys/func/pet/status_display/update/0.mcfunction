#> mobtamer:sys/func/player/status_display/update/0
#
# ステータスディスプレイを更新する
#
# @within function mobtamer:sys/tick

execute on vehicle run function mobtamer:sys/func/pet/status_display/update/aec/0

execute if data storage mobtamer:temp data.pet.state{down:1b} run function mobtamer:sys/func/pet/status_display/update/remove
execute unless data storage mobtamer:temp data.pet{is_pet:1b} run function mobtamer:sys/func/pet/status_display/update/remove
execute unless data storage mobtamer:temp data.pet.state{down:1b} run function mobtamer:sys/func/pet/status_display/update/text_display/0

scoreboard players reset #mt.pet.health mt.temp
scoreboard players reset #mt.pet.max_health mt.temp
scoreboard players reset #mt.const mt.temp
scoreboard players reset #mt.health.color mt.temp

data remove storage mobtamer:temp data.pet
