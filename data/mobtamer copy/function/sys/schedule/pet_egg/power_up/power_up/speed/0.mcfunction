
execute store result score $mt.pet.speed mt.score run data get storage mobtamer:temp data.pet_status.speed.final
execute store result storage mobtamer:temp data.pet_status.speed.final int 1 run scoreboard players add $mt.pet.speed mt.score 1
execute store result score $mt.pet.speed.no_effect mt.score run data get storage mobtamer:temp data.pet_status.speed.no_effect
execute store result storage mobtamer:temp data.pet_status.speed.no_effect int 1 run scoreboard players add $mt.pet.speed.no_effect mt.score 1
execute store result score $mt.pet.speed.base mt.score run data get storage mobtamer:temp data.pet_status.speed.base
execute store result storage mobtamer:temp data.pet_status.speed.base int 1 run scoreboard players add $mt.pet.speed.base mt.score 1
execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

execute store result entity @s Item.components."minecraft:entity_data".attributes[{id:"minecraft:generic.movement_speed"}].base double 0.01 run scoreboard players get $mt.pet.speed.base mt.score
execute store result entity @s Item.components."minecraft:entity_data".TicksFrozen int 1 run scoreboard players get $mt.temp mt.score

# 消費Exp

    scoreboard players set $mt.const mt.score 10

    scoreboard players operation $mt.required_xp mt.score = $mt.pet.speed.base mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.pet.speed.base mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.pet.speed.base mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.pet.speed.base mt.score
    scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score
    scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score
    scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score
    scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.const mt.score
    # scoreboard players add $mt.required_xp mt.score 100

    execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp
    execute store result storage mobtamer:temp data.pet_status.xp int 1 run scoreboard players operation $mt.pet.xp mt.score -= $mt.required_xp mt.score

scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.pet.xp mt.score
scoreboard players reset $mt.required_xp mt.score
