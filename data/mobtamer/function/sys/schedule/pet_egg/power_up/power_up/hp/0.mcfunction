
execute store result score $mt.pet.max_health mt.score run data get storage mobtamer:temp data.pet_status.max_health.final
execute store result score $mt.pet.max_health.base mt.score run data get storage mobtamer:temp data.pet_status.max_health.base
execute store result storage mobtamer:temp data.pet_status.max_health.final int 1 run scoreboard players add $mt.pet.max_health mt.score 2
execute store result storage mobtamer:temp data.pet_status.max_health.base int 1 run scoreboard players add $mt.pet.max_health.base mt.score 2
execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

execute store result score $mt.temp mt.score run data get entity @s Item.tag.EntityTag.Attributes[{Name:"minecraft:generic.max_health"}].Base
scoreboard players add $mt.temp mt.score 2
execute store result entity @s Item.tag.EntityTag.Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get $mt.temp mt.score

# 消費Exp

    scoreboard players set $mt.const mt.score 10

    scoreboard players operation $mt.required_xp mt.score = $mt.pet.max_health mt.score
    # scoreboard players operation $mt.required_xp mt.score *= $mt.pet.max_health mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.const mt.score

    execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp
    execute store result storage mobtamer:temp data.pet_status.xp int 1 run scoreboard players operation $mt.pet.xp mt.score -= $mt.required_xp mt.score

scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.pet.xp mt.score
scoreboard players reset $mt.required_xp mt.score
