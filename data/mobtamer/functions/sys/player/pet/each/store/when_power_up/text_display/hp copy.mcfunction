
function mobtamer:sys/player/pet/each/store/when_power_up/text_display/common

tag @s add mt.text_display.power_up.hp

data merge entity @s {transformation:{translation:[-2.0f,-0.1f,0.0f]}}

scoreboard players set $mt.const mt.score 5

scoreboard players operation $mt.required_xp mt.score = $mt.pet.max_health.next mt.score
scoreboard players operation $mt.required_xp mt.score *= $mt.pet.max_health.next mt.score
scoreboard players operation $mt.required_xp mt.score /= $mt.const mt.score

scoreboard players operation $mt.cost.attack mt.score = $mt.pet.attack.no_effect mt.score
scoreboard players operation $mt.cost.attack.add mt.score = $mt.pet.cost.attack.add mt.score
execute if score $mt.pet.cost.attack.force mt.score matches -2147483648..2147483647 run scoreboard players operation $mt.cost.attack.force mt.score = $mt.pet.cost.attack.force mt.score
execute if score $mt.pet.cost.force mt.score matches -2147483648..2147483647 run scoreboard players operation $mt.cost.force mt.score = $mt.pet.cost.force mt.score
scoreboard players operation $mt.cost.armor mt.score = $mt.pet.armor mt.score
scoreboard players operation $mt.cost.max_health mt.score = $mt.pet.max_health mt.score
scoreboard players add $mt.cost.max_health mt.score 2

function mobtamer:sys/common/pet/cost

data modify entity @s text set value '["",{"text":"最大HP","color":"yellow"},{"text":"\\n"},{"score":{"objective":"mt.score","name":"$mt.pet.max_health"},"color":"aqua"},{"text":" → ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.pet.max_health.next"},"color":"light_purple"},{"text":"\\n"},{"text":"【強化】","color":"light_purple"},{"text":"\\n"},{"text":"消費Exp: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.required_xp"},"color":"light_purple"},{"text":"\\n"},{"text":"強化後のコスト: ","color":"yellow"},{"score":{"objective":"mt.score","name":"$mt.cost"},"color":"light_purple"}]'
