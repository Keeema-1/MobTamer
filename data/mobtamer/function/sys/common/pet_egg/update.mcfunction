# Item.tag.mt_pet_stateを更新
# mt_pet_state:{}



# data modify storage mobtamer:temp data.Item.tag.mt_pet_status.attack.base
execute store result storage mobtamer:temp data.pet_status.attack.base int 1 run scoreboard players get $mt.pet.attack.base mt.score
execute store result storage mobtamer:temp data.pet_status.attack.no_effect int 1 run scoreboard players get $mt.pet.attack.no_effect mt.score
execute store result storage mobtamer:temp data.pet_status.attack.add.weapon int 1 run scoreboard players get $mt.pet.attack.add.weapon mt.score
execute store result storage mobtamer:temp data.pet_status.attack.add.effect int 1 run scoreboard players get $mt.pet.attack.add.effect mt.score
execute store result storage mobtamer:temp data.pet_status.attack.final int 1 run scoreboard players get $mt.pet.attack mt.score

execute store result storage mobtamer:temp data.pet_status.knockback int 1 run scoreboard players get $mt.pet.knockback mt.score
execute store result storage mobtamer:temp data.pet_status.max_health.final int 1 run scoreboard players get $mt.pet.max_health mt.score
execute store result storage mobtamer:temp data.pet_status.attack.armor int 1 run scoreboard players get $mt.pet.armor mt.score

execute store result storage mobtamer:temp data.pet_status.xp int 1 run scoreboard players get @s mt.xp
execute store result storage mobtamer:temp data.pet_status.cost.value int 1 run scoreboard players get $mt.cost mt.score
execute store result storage mobtamer:temp data.pet_status.cost.attack.add int 1 run scoreboard players get $mt.cost.attack.add mt.score
execute if score $mt.cost.attack.force mt.score matches 1.. store result storage mobtamer:temp data.Item.components."minecraft:custom_data".mt_pet_status.cost.attack_force int 1 run scoreboard players get $mt.cost.attack.force mt.score
execute if score $mt.cost.force mt.score matches 1.. store result storage mobtamer:temp data.Item.components."minecraft:custom_data".mt_pet_status.cost.force int 1 run scoreboard players get $mt.cost.force mt.score
