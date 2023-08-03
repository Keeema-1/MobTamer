
# ダメージ倍率 %
# k1 = ((4 * damage ÷ (8 + armor_toughness)) - armor) * 4 + 100
# k2 = (armor ÷ (-5) * 4) + 100
# k = min(k1, k2)

scoreboard players set $mt.const.4 mt.score 4
scoreboard players set $mt.const._5 mt.score -5
scoreboard players set $mt.const.100 mt.score 100

execute store result score $mt.dst.armor mt.score run attribute @s generic.armor get
execute store result score $mt.dst.armor_toughness mt.score run attribute @s generic.armor_toughness get

scoreboard players set $mt.k mt.score 4
scoreboard players operation $mt.k mt.score *= $mt.src.attack_damage mt.score
scoreboard players set $mt.tmp mt.score 8
scoreboard players operation $mt.tmp mt.score += $mt.dst.armor_toughness mt.score
scoreboard players operation $mt.k mt.score /= $mt.tmp mt.score
scoreboard players operation $mt.k mt.score -= $mt.dst.armor mt.score
scoreboard players operation $mt.k mt.score *= $mt.const.4 mt.score
scoreboard players add $mt.k mt.score 100

scoreboard players set $mt.k2 mt.score 4
scoreboard players operation $mt.k2 mt.score *= $mt.dst.armor mt.score
scoreboard players operation $mt.k2 mt.score /= $mt.const._5 mt.score
scoreboard players add $mt.k2 mt.score 100

execute if score $mt.k mt.score > $mt.k2 mt.score run scoreboard players operation $mt.k mt.score = $mt.k2 mt.score

scoreboard players operation $mt.damage mt.score = $mt.src.attack_damage mt.score
scoreboard players operation $mt.damage mt.score *= $mt.k mt.score

scoreboard players add $mt.damage mt.score 50
scoreboard players operation $mt.damage mt.score /= $mt.const.100 mt.score

execute if score $mt.damage mt.score matches 0 run damage @s 0 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 1 run damage @s 1 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 2 run damage @s 2 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 3 run damage @s 3 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 4 run damage @s 4 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 5 run damage @s 5 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 6 run damage @s 6 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 7 run damage @s 7 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 8 run damage @s 8 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 9 run damage @s 9 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 10 run damage @s 10 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 11 run damage @s 11 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 12 run damage @s 12 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 13 run damage @s 13 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 14 run damage @s 14 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 15 run damage @s 15 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 16 run damage @s 16 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 17 run damage @s 17 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 18 run damage @s 18 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 19 run damage @s 19 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]
execute if score $mt.damage mt.score matches 20.. run damage @s 20 mob_attack by @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1]

# tellraw @a [{"text":"src: "}]
# tellraw @a [{"text":"   ATK: "},{"score":{"name":"$mt.src.attack_damage","objective":"mt.score"}}]
# tellraw @a [{"text":"dst: "}]
# tellraw @a [{"text":"   DEF: "},{"score":{"name":"$mt.dst.armor","objective":"mt.score"}}]
# tellraw @a [{"text":"   DMG: "},{"score":{"name":"$mt.damage","objective":"mt.score"}}]

execute if data entity @s {Health:0.0f} as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] run function mobtamer:sys/player/pet/each/xp/0

scoreboard players reset $mt.k mt.score
scoreboard players reset $mt.k2 mt.score
scoreboard players reset $mt.const.4 mt.score
scoreboard players reset $mt.const._5 mt.score
scoreboard players reset $mt.const.100 mt.score

scoreboard players reset $mt.damage mt.score
scoreboard players reset $mt.dst.armor mt.score
scoreboard players reset $mt.dst.armor_toughness mt.score
scoreboard players reset $mt.src.attack_damage mt.score
