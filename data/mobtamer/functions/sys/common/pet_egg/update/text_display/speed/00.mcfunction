
# execute store result score $mt.pet.speed.base.before mt.score run data get storage mobtamer:temp data.pet_status.speed
execute store result score $mt.pet.speed.final.after mt.score run data get storage mobtamer:temp data.pet_status.speed.final
scoreboard players operation $mt.pet.speed.base.after mt.score = $mt.pet.speed.base.before mt.score
scoreboard players add $mt.pet.speed.base.after mt.score 1
scoreboard players add $mt.pet.speed.final.after mt.score 1
execute store result storage mobtamer:temp data.pet_status.speed.base int 1 run scoreboard players get $mt.pet.speed.base.after mt.score
execute store result storage mobtamer:temp data.pet_status.speed.final int 1 run scoreboard players get $mt.pet.speed.final.after mt.score

function mobtamer:sys/common/pet/calc_cost
execute store result score $mt.cost mt.score run data get storage mobtamer:temp data.pet_status.cost.value

scoreboard players set $mt.const mt.score 10
scoreboard players operation $mt.required_xp mt.score = $mt.pet.speed.base.after mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.pet.speed.base.after mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.pet.speed.base.after mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.pet.speed.base.after mt.score
scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score
scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score
scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score
scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.const mt.score

execute store result score $mt.pet.xp mt.score run data get storage mobtamer:temp data.pet_status.xp

execute if score $mt.pet.xp mt.score >= $mt.required_xp mt.score run data modify entity @s text set value '["",{"text":"基礎移動速度","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.speed.base.before"},"color":"aqua"},{"text":" → ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.pet.speed.base.after"},"color":"light_purple"},{"text":"\\n"},{"text":"【強化】","color":"light_purple"},{"text":"\\n"},{"text":"消費Exp: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.required_xp"},"color":"light_purple"},{"text":"\\n"},{"text":"強化後のコスト: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.cost"},"color":"light_purple"}]'
execute unless score $mt.pet.xp mt.score >= $mt.required_xp mt.score run data modify entity @s text set value '["",{"text":"基礎移動速度","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.speed.base.before"},"color":"aqua"},{"text":" → ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.pet.speed.base.after"},"color":"light_purple"},{"text":"\\n"},{"text":"【強化】","color":"gray"},{"text":"\\n"},{"text":"消費Exp: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.required_xp"},"color":"red"},{"text":"\\n"},{"text":"強化後のコスト: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.cost"},"color":"light_purple"}]'
execute unless score $mt.pet.xp mt.score >= $mt.required_xp mt.score run kill @e[type=interaction,tag=mt.interaction.power_up.hp,distance=..4,limit=1]

# scoreboard players reset $mt.pet.speed.base.before mt.score
scoreboard players reset $mt.pet.speed.base.after mt.score
scoreboard players reset $mt.cost mt.score
scoreboard players reset $mt.const mt.score
scoreboard players reset $mt.required_xp mt.score
scoreboard players reset $mt.pet.xp mt.score
scoreboard players reset $mt.pet.speed.final.after mt.score
