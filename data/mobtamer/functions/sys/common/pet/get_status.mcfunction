# health
    scoreboard players set $mt.const mt.score 100
    scoreboard players operation $mt.pet.health mt.score = @s mt.health
    scoreboard players operation $mt.pet.max_health mt.score = @s mt.max_health
    scoreboard players operation $mt.pet.health mt.score /= $mt.const mt.score
    scoreboard players operation $mt.pet.max_health mt.score /= $mt.const mt.score
    execute if score $mt.pet.health mt.score matches ..-1 run scoreboard players set $mt.pet.health mt.score 0

# attack
    execute store result score $mt.pet.attack mt.score run attribute @s generic.attack_damage get 1
    execute store result score $mt.pet.knockback mt.score run attribute @s generic.attack_knockback get 2
    execute store result score $mt.pet.speed mt.score run attribute @s generic.movement_speed get 100
    execute store result score $mt.pet.armor mt.score run attribute @s generic.armor get 1
    data modify storage mobtamer:temp data.ActiveEffects set from entity @s ActiveEffects
    effect clear @s
    execute store result score $mt.pet.attack.no_effect mt.score run attribute @s generic.attack_damage get 1
    execute store result score $mt.pet.attack.base mt.score run attribute @s generic.attack_damage base get 1
    scoreboard players operation $mt.pet.attack.add mt.score = $mt.pet.attack mt.score
    scoreboard players operation $mt.pet.attack.add mt.score -= $mt.pet.attack.base mt.score
    scoreboard players operation $mt.pet.attack.add.weapon mt.score = $mt.pet.attack.no_effect mt.score
    scoreboard players operation $mt.pet.attack.add.weapon mt.score -= $mt.pet.attack.base mt.score
    scoreboard players operation $mt.pet.attack.add.effect mt.score = $mt.pet.attack mt.score
    scoreboard players operation $mt.pet.attack.add.effect mt.score -= $mt.pet.attack.no_effect mt.score

    data modify entity @s ActiveEffects set from storage mobtamer:temp data.ActiveEffects
    data remove storage mobtamer:temp data.ActiveEffects


# cost

    scoreboard players operation $mt.cost.attack mt.score = $mt.pet.attack.no_effect mt.score

    scoreboard players reset $mt.cost.attack.force mt.score
    execute if entity @s[type=#mobtamer:slimes] run scoreboard players set $mt.cost.attack.force mt.score 1

    scoreboard players set $mt.cost.attack.add mt.score 0
    execute if entity @s[type=cave_spider] run scoreboard players set $mt.cost.attack.add mt.score 1
    execute if entity @s[type=skeleton] run scoreboard players set $mt.cost.attack.add mt.score 2
    execute if entity @s[type=stray] run scoreboard players set $mt.cost.attack.add mt.score 2
    execute if entity @s[type=witch] run scoreboard players set $mt.cost.attack.add mt.score 2
    execute if entity @s[type=ghast] run scoreboard players set $mt.cost.attack.add mt.score 40
    execute if entity @s[type=shulker] run scoreboard players set $mt.cost.attack.add mt.score 10
    execute if entity @s[type=blaze] run scoreboard players set $mt.cost.attack.add mt.score 9
    execute if entity @s[type=evoker] run scoreboard players set $mt.cost.attack.add mt.score 19
    execute if entity @s[type=panda] run scoreboard players set $mt.cost.attack.add mt.score -2
    execute if entity @s[type=frog] run scoreboard players set $mt.cost.attack.add mt.score -6
    execute if entity @s[type=warden] run scoreboard players set $mt.cost.attack.add mt.score -20

    scoreboard players reset $mt.cost.force mt.score
    execute if entity @s[type=wither] run scoreboard players set $mt.cost.force mt.score 600

    scoreboard players operation $mt.cost.max_health mt.score = @s mt.max_health
    scoreboard players operation $mt.cost.armor mt.score = $mt.pet.armor mt.score

    function mobtamer:sys/common/pet/cost


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
execute if score $mt.cost.attack.force mt.score matches 1.. store result storage mobtamer:temp data.pet_status.cost.attack_force int 1 run scoreboard players get $mt.cost.attack.force mt.score
execute if score $mt.cost.force mt.score matches 1.. store result storage mobtamer:temp data.pet_status.cost.force int 1 run scoreboard players get $mt.cost.force mt.score

scoreboard players reset $mt.const mt.score

