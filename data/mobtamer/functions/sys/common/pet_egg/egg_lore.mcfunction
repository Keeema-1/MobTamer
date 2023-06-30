# mt_pet_state:{}

execute store result score $mt.pet.attack mt.score run data get storage mobtamer:temp data.pet_status.attack.final
execute store result score $mt.pet.attack.no_effect mt.score run data get storage mobtamer:temp data.pet_status.attack.no_effect
execute store result score $mt.pet.attack.base mt.score run data get storage mobtamer:temp data.pet_status.attack.base
execute store result score $mt.pet.attack.add.weapon mt.score run data get storage mobtamer:temp data.pet_status.attack.add.weapon
execute store result score $mt.pet.attack.add.effect mt.score run data get storage mobtamer:temp data.pet_status.attack.add.effect
execute store result score $mt.pet.max_health mt.score run data get storage mobtamer:temp data.pet_status.max_health
execute store result score $mt.pet.health mt.score run data get storage mobtamer:temp data.pet_status.health
execute store result score $mt.pet.armor mt.score run data get storage mobtamer:temp data.pet_status.armor
execute store result score $mt.pet.knockback mt.score run data get storage mobtamer:temp data.pet_status.knockback
execute store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.value

data modify storage mobtamer:temp data.Item set from entity @s Item

execute positioned ~ -70 ~ summon zombie run function mobtamer:sys/common/pet_egg/egg_lore_sub

scoreboard players reset $mt.pet.attack mt.score
scoreboard players reset $mt.pet.attack.base mt.score
scoreboard players reset $mt.pet.attack.add mt.score
scoreboard players reset $mt.pet.attack.add.weapon mt.score
scoreboard players reset $mt.pet.attack.add.effect mt.score
scoreboard players reset $mt.pet.attack.no_effect mt.score
scoreboard players reset $mt.pet.knockback mt.score
scoreboard players reset $mt.pet.armor mt.score
scoreboard players reset $mt.pet.max_health mt.score
scoreboard players reset $mt.pet.health mt.score

scoreboard players reset $mt.cost mt.score
