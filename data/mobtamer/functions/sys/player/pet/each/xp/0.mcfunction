execute on target if entity @s[type=#mobtamer:xp/multiplier/0] run scoreboard players set $mt.xp.add mt.score 0
execute unless predicate mobtamer:targeting on passengers if entity @s[tag=mt.target_record_entity] on origin if entity @s[type=#mobtamer:xp/multiplier/0] run scoreboard players set $mt.xp.add mt.score 0

execute on target unless entity @s[type=#mobtamer:xp/multiplier/0] run function mobtamer:sys/player/pet/each/xp/00
execute unless predicate mobtamer:targeting on passengers if entity @s[tag=mt.target_record_entity] on origin unless entity @s[type=#mobtamer:xp/multiplier/0] run function mobtamer:sys/player/pet/each/xp/00

scoreboard players operation $mt.xp.remain mt.score = $mt.xp.add mt.score

scoreboard players operation $mt.xp.add.killer mt.score = $mt.xp.remain mt.score
scoreboard players add $mt.xp.add.killer mt.score 1
scoreboard players set $mt.temp mt.score 2
scoreboard players operation $mt.xp.add.killer mt.score /= $mt.temp mt.score
scoreboard players operation $mt.xp.remain mt.score -= $mt.xp.add.killer mt.score

scoreboard players operation $mt.xp.add mt.score = $mt.xp.remain mt.score
execute store result score $mt.temp mt.score if entity @e[team=!,tag=mt.player_check,tag=mt.pet]
scoreboard players operation $mt.xp.add mt.score /= $mt.temp mt.score
scoreboard players operation @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.down,tag=!mt.stop,tag=!mt.pet_check] mt.xp += $mt.xp.add mt.score
execute as @e[team=!,tag=mt.player_check,tag=mt.pet,tag=!mt.down,tag=!mt.stop,tag=!mt.pet_check] run scoreboard players operation $mt.xp.remain mt.score -= $mt.xp.add mt.score
scoreboard players operation $mt.xp.add.killer mt.score += $mt.xp.remain mt.score
scoreboard players operation @s mt.xp += $mt.xp.add.killer mt.score

execute if data storage mobtamer:settings data{exp_display:1b} run function mobtamer:sys/player/pet/each/xp/display/0

scoreboard players reset $mt.xp.add
scoreboard players reset $mt.xp.add.killer
scoreboard players reset $mt.temp
scoreboard players reset $mt.xp.remain

advancement grant @a[tag=mt.player_check,limit=1] only mobtamer:mobtamer/first_kill
