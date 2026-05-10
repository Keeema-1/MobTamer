
execute store result score #mt.pet.max_health mt.temp run data get storage mobtamer:temp data.pet_status.max_health.final
execute store result score #mt.pet.max_health.base mt.temp run data get storage mobtamer:temp data.pet_status.max_health.base
execute store result score #mt.pet.max_health.add.variant mt.temp run data get storage mobtamer:temp data.pet_status.max_health.add.variant
execute store result score #mt.pet.health mt.temp run data get storage mobtamer:temp data.pet_status.health

execute store result score #mt.pet.attack mt.temp run data get storage mobtamer:temp data.pet_status.attack.final
execute store result score #mt.pet.attack.no_effect mt.temp run data get storage mobtamer:temp data.pet_status.attack.no_effect
execute store result score #mt.pet.attack.base mt.temp run data get storage mobtamer:temp data.pet_status.attack.base
execute store result score #mt.pet.attack.add.weapon mt.temp run data get storage mobtamer:temp data.pet_status.attack.add.weapon
execute store result score #mt.pet.attack.add.effect mt.temp run data get storage mobtamer:temp data.pet_status.attack.add.effect
execute store result score #mt.pet.attack.add.variant mt.temp run data get storage mobtamer:temp data.pet_status.attack.add.variant
