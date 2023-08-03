
execute store result score $mt.pet.attack mt.score run data get storage mobtamer:temp data.pet_status.attack.final
execute store result storage mobtamer:temp data.pet_status.attack.final int 1 run scoreboard players add $mt.pet.attack mt.score 1
execute store result score $mt.pet.attack.no_effect mt.score run data get storage mobtamer:temp data.pet_status.attack.no_effect
execute store result storage mobtamer:temp data.pet_status.attack.no_effect int 1 run scoreboard players add $mt.pet.attack.no_effect mt.score 1
execute store result score $mt.pet.attack.base mt.score run data get storage mobtamer:temp data.pet_status.attack.base
execute store result storage mobtamer:temp data.pet_status.attack.base int 1 run scoreboard players add $mt.pet.attack.base mt.score 1
execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

execute store result score $mt.temp mt.score run data get entity @s Item.tag.EntityTag.Attributes[{Name:"minecraft:generic.attack_damage"}].Base
scoreboard players add $mt.temp mt.score 1
execute store result entity @s Item.tag.EntityTag.Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get $mt.temp mt.score
execute store result entity @s Item.tag.EntityTag.TicksFrozen int 1 run scoreboard players get $mt.temp mt.score

# 消費Exp

    scoreboard players set $mt.const mt.score 5

    scoreboard players operation $mt.required_xp mt.score = $mt.pet.attack.base mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.pet.attack.base mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.pet.attack.base mt.score
    scoreboard players operation $mt.required_xp mt.score *= $mt.const mt.score

    execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp
    execute store result storage mobtamer:temp data.pet_status.xp int 1 run scoreboard players operation $mt.pet.xp mt.score -= $mt.required_xp mt.score

scoreboard players reset $mt.temp mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.pet.xp mt.score
scoreboard players reset $mt.required_xp mt.score
