# mt_pet_state:{}

execute store result score $mt.pet.attack mt.score run data get storage mobtamer:temp data.pet_status.attack.final
execute store result score $mt.pet.attack.no_effect mt.score run data get storage mobtamer:temp data.pet_status.attack.no_effect
execute store result score $mt.pet.attack.base mt.score run data get storage mobtamer:temp data.pet_status.attack.base
execute store result score $mt.pet.attack.add.weapon mt.score run data get storage mobtamer:temp data.pet_status.attack.add.weapon
execute store result score $mt.pet.attack.add.effect mt.score run data get storage mobtamer:temp data.pet_status.attack.add.effect
execute store result score $mt.pet.attack.add.variant mt.score run data get storage mobtamer:temp data.pet_status.attack.add.variant

execute store result score $mt.pet.armor mt.score run data get storage mobtamer:temp data.pet_status.armor.final
execute store result score $mt.pet.armor.no_effect mt.score run data get storage mobtamer:temp data.pet_status.armor.no_effect
execute store result score $mt.pet.armor.base mt.score run data get storage mobtamer:temp data.pet_status.armor.base
execute store result score $mt.pet.armor.add.weapon mt.score run data get storage mobtamer:temp data.pet_status.armor.add.weapon
execute store result score $mt.pet.armor.add.effect mt.score run data get storage mobtamer:temp data.pet_status.armor.add.effect
execute store result score $mt.pet.armor.add.variant mt.score run data get storage mobtamer:temp data.pet_status.armor.add.variant

execute store result score $mt.pet.speed mt.score run data get storage mobtamer:temp data.pet_status.speed.final
execute store result score $mt.pet.speed.no_effect mt.score run data get storage mobtamer:temp data.pet_status.speed.no_effect
execute store result score $mt.pet.speed.base mt.score run data get storage mobtamer:temp data.pet_status.speed.base
execute store result score $mt.pet.speed.add.weapon mt.score run data get storage mobtamer:temp data.pet_status.speed.add.weapon
execute store result score $mt.pet.speed.add.effect mt.score run data get storage mobtamer:temp data.pet_status.speed.add.effect
execute store result score $mt.pet.speed.add.variant mt.score run data get storage mobtamer:temp data.pet_status.speed.add.variant

execute store result score $mt.pet.max_health mt.score run data get storage mobtamer:temp data.pet_status.max_health.final
execute store result score $mt.pet.max_health.base mt.score run data get storage mobtamer:temp data.pet_status.max_health.base
execute store result score $mt.pet.max_health.add.variant mt.score run data get storage mobtamer:temp data.pet_status.max_health.add.variant
execute store result score $mt.pet.health mt.score run data get storage mobtamer:temp data.pet_status.health
# execute store result score $mt.pet.armor mt.score run data get storage mobtamer:temp data.pet_status.armor
# execute store result score $mt.pet.speed mt.score run data get storage mobtamer:temp data.pet_status.speed
execute store result score $mt.pet.knockback mt.score run data get storage mobtamer:temp data.pet_status.knockback
execute store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.value
execute store result score $mt.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

data modify storage mobtamer:temp data.Item set from entity @s Item

execute positioned ~ -70 ~ summon zombie run function mobtamer:sys/common/pet_egg/update/lore/00

data modify entity @s Item.tag.display.Lore set from storage mobtamer:temp data.Item.tag.display.Lore

scoreboard players reset $mt.pet.attack mt.score
scoreboard players reset $mt.pet.attack.base mt.score
scoreboard players reset $mt.pet.attack.variant mt.score
scoreboard players reset $mt.pet.attack.add mt.score
scoreboard players reset $mt.pet.attack.add.weapon mt.score
scoreboard players reset $mt.pet.attack.add.effect mt.score
scoreboard players reset $mt.pet.attack.no_effect mt.score
scoreboard players reset $mt.pet.knockback mt.score
scoreboard players reset $mt.pet.armor mt.score
scoreboard players reset $mt.pet.speed mt.score
scoreboard players reset $mt.pet.max_health mt.score
scoreboard players reset $mt.pet.max_health.base mt.score
scoreboard players reset $mt.pet.max_health.add.variant mt.score
scoreboard players reset $mt.pet.health mt.score

scoreboard players reset $mt.cost mt.score
scoreboard players reset $mt.xp mt.score
