
execute store result score $mt.pet.armor mt.score run data get storage mobtamer:temp data.pet_status.armor.final
execute store result storage mobtamer:temp data.pet_status.armor.final int 1 run scoreboard players add $mt.pet.armor mt.score 2
execute store result score $mt.pet.armor.no_effect mt.score run data get storage mobtamer:temp data.pet_status.armor.no_effect
execute store result storage mobtamer:temp data.pet_status.armor.no_effect int 1 run scoreboard players add $mt.pet.armor.no_effect mt.score 2
execute store result score $mt.pet.armor.base mt.score run data get storage mobtamer:temp data.pet_status.armor.base
execute store result storage mobtamer:temp data.pet_status.armor.base int 1 run scoreboard players add $mt.pet.armor.base mt.score 2
execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

execute store result entity @s Item.tag.EntityTag.Attributes[{Name:"minecraft:generic.armor"}].Base double 1 run scoreboard players get $mt.pet.armor.base mt.score
execute store result entity @s Item.tag.EntityTag.TicksFrozen int 1 run scoreboard players get $mt.temp mt.score

# 消費Exp

    scoreboard players set $mt.const mt.score 40

    scoreboard players operation $mt.required_xp mt.score = $mt.pet.armor.base mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.const mt.score
    scoreboard players add $mt.required_xp mt.score 100

    execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp
    execute store result storage mobtamer:temp data.pet_status.xp int 1 run scoreboard players operation $mt.pet.xp mt.score -= $mt.required_xp mt.score

scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.pet.xp mt.score
scoreboard players reset $mt.required_xp mt.score
