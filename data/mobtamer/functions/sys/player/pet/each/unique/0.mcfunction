
execute if entity @s[type=#mobtamer:change_to_drowned] if predicate mobtamer:location_water if predicate mobtamer:random/100m run data modify entity @s InWaterTime set value -1

execute if entity @s[type=skeleton] if predicate mobtamer:random/100m run function mobtamer:sys/player/pet/each/unique/skeleton

execute if entity @s[type=#mobtamer:breathe_underwater] unless predicate mobtamer:location_water if predicate mobtamer:random/100m run data modify entity @s Air set value 1000s
execute if entity @s[type=dolphin] unless predicate mobtamer:location_water if predicate mobtamer:random/10m run data modify entity @s Moistness set value 2400
execute if entity @s[type=dolphin] if predicate mobtamer:location_water if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/dolphin/0

execute if entity @s[type=vex] if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/vex/0

execute if entity @s[type=bee] if entity @s[nbt={HasStung:1b}] run data merge entity @s {HasStung:0b,TicksSincePollination:0}

execute if entity @s[type=fox] run function mobtamer:sys/player/pet/each/unique/fox

execute if entity @s[type=ocelot] if entity @s[tag=!mt.down,tag=!mt.stop] run function mobtamer:sys/player/pet/each/unique/custom_attack/0
execute if entity @s[type=fox] if entity @s[tag=!mt.down,tag=!mt.stop] run function mobtamer:sys/player/pet/each/unique/custom_attack/0
execute if entity @s[tag=mt.custom_attack] if entity @s[tag=!mt.down,tag=!mt.stop] run function mobtamer:sys/player/pet/each/unique/custom_attack/0

execute if entity @s[type=#mobtamer:guardians,tag=!mt.down,tag=!mt.stop] run function mobtamer:sys/player/pet/each/unique/guardian/0

execute if entity @s[type=wolf,tag=mt.following] if data entity @s {Sitting:1b} run data modify entity @s Sitting set value 0b

execute if entity @s[type=#mobtamer:can_fly] run function mobtamer:sys/player/pet/each/unique/can_fly

execute if entity @s[type=!#mobtamer:weight/heavy] if predicate mobtamer:random/50m run function mobtamer:sys/player/pet/each/unique/not_heavy

execute if predicate mobtamer:random/1m if data storage mobtamer:temp data.player_settings{baby_grow:0b} if predicate mobtamer:is_baby run data modify entity @s Age set value -100000
execute if predicate mobtamer:random/10m if entity @s[type=tadpole] run data modify entity @s Age set value -100000

execute if entity @s[type=goat] if predicate mobtamer:random/50m if data entity @s Brain.memories."minecraft:ram_cooldown_ticks" run data modify entity @s Brain.memories."minecraft:ram_cooldown_ticks" set value 0

execute if entity @s[type=phantom] if predicate mobtamer:random/50m unless predicate mobtamer:undead_dont_burn unless score $mt.schedule.store.phantom mt.score matches 1.. if dimension overworld unless data entity @s {Fire:-1s} run function mobtamer:sys/player/pet/each/unique/phantom_store
execute if entity @s[type=phantom,tag=!mt.down,tag=!mt.stop] run function mobtamer:sys/player/pet/each/unique/phantom/0

execute if entity @s[type=#mobtamer:slimes] run function mobtamer:sys/player/pet/each/unique/slime/0

execute if entity @s[type=evoker] if predicate mobtamer:targeting run function mobtamer:sys/player/pet/each/unique/evoker

execute if entity @s[type=wither] unless predicate mobtamer:targeting as @e[type=wither_skull,distance=..4] run function mobtamer:sys/player/pet/each/unique/wither

execute if entity @s[type=ender_dragon,tag=!mt.down,tag=!mt.stop] run function mobtamer:sys/player/pet/each/unique/ender_dragon/0

execute if entity @s[type=ghast,tag=!mt.down,tag=!mt.stop] run function mobtamer:sys/player/pet/each/unique/ghast/0

execute if predicate mobtamer:random/50m on passengers if entity @s[type=!area_effect_cloud] on vehicle if entity @s[tag=mt.pet_check] if data entity @s {CustomNameVisible:1b} run data modify entity @s CustomNameVisible set value 0b
execute if predicate mobtamer:random/50m unless predicate mobtamer:passenger_exists unless data entity @s {CustomNameVisible:1b} run data modify entity @s CustomNameVisible set value 1b

execute if data storage mobtamer:temp data.pet.ArmorItems[{id:"minecraft:elytra"}] unless data storage mobtamer:temp data.pet{OnGround:1b} if block ~ ~-2 ~ #mobtamer:space run function mobtamer:sys/player/pet/each/unique/elytra
