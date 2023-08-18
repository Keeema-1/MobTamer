function mobtamer:sys/common/pet/kill

tellraw @a[tag=mt.player_check] [{"selector":"@s"},{"storage": "mobtamer:text","nbt":"data.pet.die","interpret": true}]
