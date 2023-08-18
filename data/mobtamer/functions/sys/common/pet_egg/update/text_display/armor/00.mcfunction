
scoreboard players operation $mt.pet.armor.base.after mt.score = $mt.pet.armor.base.before mt.score
execute store result score $mt.pet.armor.final.after mt.score run data get storage mobtamer:temp data.pet_status.armor.final
execute store result score $mt.pet.armor.no_effect.after mt.score run data get storage mobtamer:temp data.pet_status.armor.no_effect
execute store result storage mobtamer:temp data.pet_status.armor.base int 1 run scoreboard players add $mt.pet.armor.base.after mt.score 2
execute store result storage mobtamer:temp data.pet_status.armor.final int 1 run scoreboard players add $mt.pet.armor.final.after mt.score 2
execute store result storage mobtamer:temp data.pet_status.armor.no_effect int 1 run scoreboard players add $mt.pet.armor.no_effect.after mt.score 2
execute store result score $mt.pet.armor.base_and_variant.after mt.score run data get storage mobtamer:temp data.pet_status.armor.add.variant
scoreboard players operation $mt.pet.armor.base_and_variant.after mt.score += $mt.pet.armor.base.after mt.score

function mobtamer:sys/common/pet/calc_cost
execute store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.value

scoreboard players set $mt.const mt.score 40

scoreboard players operation $mt.required_xp mt.score = $mt.pet.armor.base.after mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.const mt.score
scoreboard players add $mt.required_xp mt.score 100

execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

execute if score $mt.pet.xp mt.score >= $mt.required_xp mt.score run data modify entity @s text set value '["",{"text":"基礎防御力","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.armor.base.before"},"color":"aqua"},{"text":" → ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.pet.armor.base.after"},"color":"light_purple"},{"text":"\\n"},{"text":"【強化】","color":"light_purple"},{"text":"\\n"},{"text":"消費Exp: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.required_xp"},"color":"light_purple"},{"text":"\\n"},{"text":"強化後のコスト: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.cost"},"color":"light_purple"}]'
execute unless score $mt.pet.xp mt.score >= $mt.required_xp mt.score run data modify entity @s text set value '["",{"text":"基礎防御力","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.armor.base.before"},"color":"aqua"},{"text":" → ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.pet.armor.base.after"},"color":"light_purple"},{"text":"\\n"},{"text":"【強化】","color":"gray"},{"text":"\\n"},{"text":"消費Exp: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.required_xp"},"color":"red"},{"text":"\\n"},{"text":"強化後のコスト: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.cost"},"color":"light_purple"}]'
execute unless score $mt.pet.xp mt.score >= $mt.required_xp mt.score run kill @e[type=interaction,tag=mt.interaction.power_up.armor,distance=..4,limit=1]

scoreboard players reset $mt.pet.armor.base.after mt.score
scoreboard players reset $mt.pet.armor.base_and_variant.after mt.score
scoreboard players reset $mt.pet.armor.final.after mt.score
scoreboard players reset $mt.pet.armor.no_effect.after mt.score
scoreboard players reset $mt.cost mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.required_xp mt.score
