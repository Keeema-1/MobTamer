
execute store result score $mt.pet.attack.base.after mt.score run data get storage mobtamer:temp data.pet_status.attack.base
scoreboard players operation $mt.pet.attack.base.before mt.score = $mt.pet.attack.base.after mt.score
execute store result score $mt.pet.attack.final.after mt.score run data get storage mobtamer:temp data.pet_status.attack.final
execute store result score $mt.pet.attack.no_effect.after mt.score run data get storage mobtamer:temp data.pet_status.attack.no_effect
execute store result storage mobtamer:temp data.pet_status.attack.base int 1 run scoreboard players add $mt.pet.attack.base.after mt.score 1
execute store result storage mobtamer:temp data.pet_status.attack.final int 1 run scoreboard players add $mt.pet.attack.final.after mt.score 1
execute store result storage mobtamer:temp data.pet_status.attack.no_effect int 1 run scoreboard players add $mt.pet.attack.no_effect.after mt.score 1

function mobtamer:sys/common/pet/calc_cost
execute store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.value

scoreboard players set $mt.const mt.score 5

scoreboard players operation $mt.required_xp mt.score = $mt.pet.attack.base.after mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.pet.attack.base.after mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.pet.attack.base.after mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.const mt.score

execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

execute if score $mt.pet.xp mt.score >= $mt.required_xp mt.score run data modify entity @s text set value '["",{"text":"基礎攻撃力","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.attack.base.before"},"color":"aqua"},{"text":" → ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.pet.attack.base.after"},"color":"light_purple"},{"text":"\\n"},{"text":"【強化】","color":"light_purple"},{"text":"\\n"},{"text":"消費Exp: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.required_xp"},"color":"light_purple"},{"text":"\\n"},{"text":"強化後のコスト: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.cost"},"color":"light_purple"}]'
execute unless score $mt.pet.xp mt.score >= $mt.required_xp mt.score run data modify entity @s text set value '["",{"text":"基礎攻撃力","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.attack.base.before"},"color":"aqua"},{"text":" → ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.pet.attack.base.after"},"color":"light_purple"},{"text":"\\n"},{"text":"【強化】","color":"gray"},{"text":"\\n"},{"text":"消費Exp: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.required_xp"},"color":"red"},{"text":"\\n"},{"text":"強化後のコスト: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.cost"},"color":"light_purple"}]'
execute unless score $mt.pet.xp mt.score >= $mt.required_xp mt.score run kill @e[type=interaction,tag=mt.interaction.power_up.attack,distance=..4,limit=1]

scoreboard players reset $mt.pet.attack.base.before mt.score
scoreboard players reset $mt.pet.attack.base.after mt.score
scoreboard players reset $mt.pet.attack.final.after mt.score
scoreboard players reset $mt.pet.attack.no_effect.after mt.score
scoreboard players reset $mt.cost mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.required_xp mt.score
