execute unless predicate mobtamer:targeting_not_common_team if entity @a[tag=mt.player_check,distance=10..32] run function mobtamer:sys/player/pet/each/follow/1
execute if predicate mobtamer:targeting_not_common_team if entity @a[tag=mt.player_check,distance=24..32] run function mobtamer:sys/player/pet/each/follow/1
