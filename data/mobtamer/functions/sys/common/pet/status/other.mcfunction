
# execute store result score $mt.pet.knockback mt.score run attribute @s generic.attack_knockback get 2
# execute store result score $mt.pet.armor mt.score run attribute @s generic.armor get 1

# execute store result storage mobtamer:temp data.pet_status.knockback int 1 run scoreboard players get $mt.pet.knockback mt.score
# execute store result storage mobtamer:temp data.pet_status.attack.armor int 1 run scoreboard players get $mt.pet.armor mt.score

execute store result storage mobtamer:temp data.pet_status.knockback int 1 run attribute @s generic.attack_knockback get 2
execute store result storage mobtamer:temp data.pet_status.armor int 1 run attribute @s generic.armor get 1

execute store result storage mobtamer:temp data.pet_status.xp int 1 run scoreboard players get @s mt.xp

# scoreboard players reset $mt.pet.knockback mt.score
# scoreboard players reset $mt.pet.armor mt.score
